/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is Sun Microsystems code.
 *
 * The Initial Developer of the Original Code is
 *   Sun Microsystems, Inc.
 * Portions created by the Initial Developer are Copyright (C) 2008
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Daniel Boelzle <daniel.boelzle@sun.com>
 *   Berend Cornelius <berend.cornelius@sun.com>
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */

// New code must not load/import calUtils.js, but should use calUtils.jsm.

EXPORTED_SYMBOLS = ["cal"];
let cal = {
    // new code should land here,
    // and more code should be moved from calUtils.js into this object to avoid
    // clashes with other extensions

    getThreadManager: generateServiceAccessor("@mozilla.org/thread-manager;1",
                                              Components.interfaces.nsIThreadManager),
    getIOService: generateServiceAccessor("@mozilla.org/network/io-service;1",
                                          Components.interfaces.nsIIOService2),
    getObserverService: generateServiceAccessor("@mozilla.org/observer-service;1",
                                                Components.interfaces.nsIObserverService),
    getDragService: generateServiceAccessor("@mozilla.org/widget/dragservice;1",
                                                Components.interfaces.nsIDragService),

    /**
     * Loads an array of calendar scripts into the passed scope.
     *
     * @param scriptNames an array of calendar script names
     * @param scope       scope to load into
     * @param baseDir     base dir; defaults to calendar-js/
     */
    loadScripts: function cal_loadScripts(scriptNames, scope, baseDir) {
        let scriptLoader = Components.classes["@mozilla.org/moz/jssubscript-loader;1"]
                                     .createInstance(Components.interfaces.mozIJSSubScriptLoader);
        let ioService = cal.getIOService();

        if (!baseDir) {
            baseDir = __LOCATION__.parent.parent.clone();
            baseDir.append("calendar-js");
        }

        for each (let script in scriptNames) {
            let scriptFile = baseDir.clone();
            scriptFile.append(script);
            let scriptUrlSpec = ioService.newFileURI(scriptFile).spec;
            try {
                scriptLoader.loadSubScript(scriptUrlSpec, scope);
            } catch (exc) {
                Components.utils.reportError(exc + " (" + scriptUrlSpec + ")");
            }
        }
    },

    /**
     * Schedules execution of the passed function to the current thread's queue.
     * Do this to work around re-entrancy problems w.r.t. processPendingEvent(), e.g. on chrome startup.
     */
    postPone: function cal_postPone(func) {
        cal.getThreadManager().currentThread.dispatch({ run: func },
                                                      Components.interfaces.nsIEventTarget.DISPATCH_NORMAL);
    },

    /**
     * Call this function regularly to process a pending event, e.g. UI.
     */
    processPendingEvent: function cal_processPendingEvent() {
        let thread = cal.getThreadManager().currentThread;
        thread.processNextEvent(false /* don't wait */);
    },

    get threadingEnabled cal_threadingEnabled() {
        if (cal_threadingEnabled.val === undefined) {
            cal_threadingEnabled.val = !cal.getPrefSafe("calendar.threading.disabled", false);
        }
        return cal_threadingEnabled.val;
    },

    getWorkerThread: function cal_getWorkerThread() {
        let threads = cal_getWorkerThread.mThreads;
        switch (threads) {
            case null:
                return null; // during shutdown
            case undefined: {
                cal_getWorkerThread.mThreads = threads = Components.classes["@mozilla.org/thread-pool;1"]
                                                                   .createInstance(Components.interfaces.nsIThreadPool);
                cal.addShutdownObserver(function() {
                        cal.LOG("cal.getWorkerThread() shutdown.");
                        let threads = cal_getWorkerThread.mThreads;
                        cal_getWorkerThread.mThreads = null;
                        threads.shutdown();
                    });
                break;
            }
        }
        return threads;
    },

    /**
     * Executes the passed action function on a worker thread.
     * Once the action function has been executed, respFunc is called
     * on the same thread that execAsync() has been called on.
     *
     * xxx todo: think of leaks, ref cycles!
     */
    execWorker: function cal_execWorker(actionFunc, respFunc) {
        // response executed on the calling thread:
        let callingThread = cal.getThreadManager().currentThread;

        let worker = { // nsIRunnable:
            run: function worker_run() {
                let res = null;
                try {
                    actionFunc(callingThread);
                } catch (exc) {
                    res = exc;
                }

                if (!respFunc) {
                    return;
                }

                let response = { // nsIRunnable:
                    run: function response_run() {
                        respFunc(res);
                    }
                };
                callingThread.dispatch(response, Components.interfaces.nsIEventTarget.DISPATCH_NORMAL);
            }
        };

        if (cal.threadingEnabled) {
            let thread = cal.getWorkerThread();
            if (thread) {
                thread.dispatch(worker, Components.interfaces.nsIEventTarget.DISPATCH_NORMAL);
                return;
            } // else shutdown ongoing
        }

        runnable.run(); // exec on current thread
    },

    /**
     * Checks whether a timezone lacks a definition.
     */
    isPhantomTimezone: function cal_isPhantomTimezone(tz) {
        return (!tz.icalComponent && !tz.isUTC && !tz.isFloating);
    },

    /**
     * Shifts an item by the given timely offset.
     *
     * @param item an item
     * @param offset an offset (calIDuration)
     */
    shiftItem: function cal_shiftItem(item, offset) {
        // When modifying dates explicitly using the setters is important
        // since those may triggers e.g. calIRecurrenceInfo::onStartDateChange
        // or invalidate other properties. Moreover don't modify the date-time objects
        // without cloning, because changes cannot be calculated if doing so.
        if (cal.isEvent(item)) {
            let date = item.startDate.clone();
            date.addDuration(offset);
            item.startDate = date;
            date = item.endDate.clone();
            date.addDuration(offset);
            item.endDate = date;
        } else /* isToDo */ {
            if (item.entryDate) {
                let date = item.entryDate.clone();
                date.addDuration(offset);
                item.entryDate = date;
            }
            if (item.dueDate) {
                let date = item.dueDate.clone();
                date.addDuration(offset);
                item.dueDate = date;
            }
        }
    },

    /**
     * Shortcut function to serialize an item (including all overridden items).
     */
    getSerializedItem: function cal_getSerializedItem(aItem) {
        let serializer = Components.classes["@mozilla.org/calendar/ics-serializer;1"]
                                   .createInstance(Components.interfaces.calIIcsSerializer);
        serializer.addItems([aItem], 1);
        return serializer.serializeToString();
    },

    /**
     * Shortcut function to check whether an item is an invitation copy.
     */
    isInvitation: function cal_isInvitation(aItem) {
        let isInvitation = false;
        let calendar = aItem.calendar;
        if (cal.calInstanceOf(calendar, Components.interfaces.calISchedulingSupport)) {
            isInvitation = calendar.isInvitation(aItem);
        }
        return isInvitation;
    },

    /**
     * Shortcut function to check whether an item is an invitation copy and
     * has a participation status of either NEEDS-ACTION or TENTATIVE.
     *
     * @param aItem either calIAttendee or calIItemBase 
     */
    isOpenInvitation: function cal_isOpenInvitation(aItem) {
        if (!cal.calInstanceOf(aItem, Components.interfaces.calIAttendee)) {
            aItem = cal.getInvitedAttendee(aItem);
        }
        if (aItem) {
            switch (aItem.participationStatus) {
                case "NEEDS-ACTION":
                case "TENTATIVE":
                    return true;
            }
        }
        return false;
    },

    /**
     * Shortcut function to get the invited attendee of an item.
     */
    getInvitedAttendee: function cal_getInvitedAttendee(aItem, aCalendar) {
        if (!aCalendar) {
            aCalendar = aItem.calendar;
        }
        let invitedAttendee = null;
        if (cal.calInstanceOf(aCalendar, Components.interfaces.calISchedulingSupport)) {
            invitedAttendee = aCalendar.getInvitedAttendee(aItem);
        }
        return invitedAttendee;
    },

    // The below functions will move to some different place once the
    // unifinder tress are consolidated.

    compareNativeTime: function cal_compareNativeTime(a, b) {
      return (a < b ? -1 :
              a > b ?  1 : 0);
    },

    compareNumber: function cal_compareNumber(a, b) {
      a = Number(a);
      b = Number(b);
      return ((a < b) ? -1 :      // avoid underflow problems of subtraction
              (a > b) ?  1 : 0);
    },

    sortEntryComparer: function cal_sortEntryComparer(sortType, modifier) {
      switch (sortType) {
        case "number":
          function compareNumbers(sortEntryA, sortEntryB) {
            var nsA = cal.sortEntryKey(sortEntryA);
            var nsB = cal.sortEntryKey(sortEntryB);
            return cal.compareNumber(nsA, nsB) * modifier;
          }
          return compareNumbers;
        case "date":
          function compareTimes(sortEntryA, sortEntryB) {
            var nsA = cal.sortEntryKey(sortEntryA);
            var nsB = cal.sortEntryKey(sortEntryB);
            return cal.compareNativeTime(nsA, nsB) * modifier;
          }
          return compareTimes;
        case "string":
          var collator = cal.createLocaleCollator();
          function compareStrings(sortEntryA, sortEntryB) {
            var sA = cal.sortEntryKey(sortEntryA);
            var sB = cal.sortEntryKey(sortEntryB);
            if (sA.length == 0 || sB.length == 0) {
              // sort empty values to end (so when users first sort by a
              // column, they can see and find the desired values in that
              // column without scrolling past all the empty values).
              return -(sA.length - sB.length) * modifier;
            }
            var comparison = collator.compareString(0, sA, sB);
            return comparison * modifier;
          }
          return compareStrings;

        default:
          function compareOther(sortEntryA, sortEntryB) {
            return 0;
          }
          return compareOther;
      }
    },

    getItemSortKey: function cal_getItemSortKey(aItem, aKey, aStartTime) {
      switch(aKey) {
        case "priority":
          return aItem.priority || 5;

        case "title":
          return aItem.title || "";

        case "entryDate":
            return cal.nativeTimeOrNow(aItem.entryDate, aStartTime);
        case "startDate":
            return cal.nativeTimeOrNow(aItem.startDate, aStartTime);

        case "dueDate":
          return cal.nativeTimeOrNow(aItem.dueDate, aStartTime);

        case "endDate":
          return cal.nativeTimeOrNow(aItem.endDate, aStartTime);
        case "completedDate":
                  // XXX: is this right ??
          return cal.nativeTimeOrNow(aItem.completedDate, aStartTime);

        case "percentComplete":
          return aItem.percentComplete;

        case "categories":
          return aItem.getCategories({}).join(", ");

        case "location":
          return aItem.getProperty("LOCATION") || "";

        case "status":
          if (cal.isToDo(aItem)) {
            return ["NEEDS-ACTION", "IN-PROCESS", "COMPLETED", "CANCELLED" ].indexOf(aItem.status);
          } else {
            return ["TENTATIVE", "CONFIRMED", "CANCELLED"].indexOf(aItem.status);
          }
        case "calendar":
          return aItem.calendar.name || "";

        default:
          return null;
      }
    },

    getSortTypeForSortKey: function cal_getSortTypeForSortKey(aSortKey) {
      switch(aSortKey) {
        case "title":
        case "categories":
        case "location":
        case "calendar":
          return "string";

        case "completedDate":
        case "entryDate":
        case "dueDate":
        case "startDate":
        case "endDate":
          return "date";

        case "priority":
        case "percentComplete":
        case "status":
          return "number";
      }
    },

    nativeTimeOrNow: function cal_nativeTimeOrNow(calDateTime, sortStartedTime) {
        // Treat null/0 as 'now' when sort started, so incomplete tasks stay current.
        // Time is computed once per sort (just before sort) so sort is stable.
        if (calDateTime == null) {
            return sortStartedTime.nativeTime;
        }
        var ns = calDateTime.nativeTime;
        if (ns == -62168601600000000) { // ns value for (0000/00/00 00:00:00)
            return sortStartedTime;
        }
        return ns;
    },

    sortEntry: function cal_sortEntry(aItem) {
        var key = cal.getItemSortKey(aItem, this.mSortKey, this.mSortStartedDate);
        return {mSortKey : key, mItem: aItem};
    },

    sortEntryItem: function cal_sortEntryItem(sortEntry) {
        return sortEntry.mItem;
    },

    sortEntryKey: function cal_sortEntryKey(sortEntry) {
        return sortEntry.mSortKey;
    },

    createLocaleCollator: function cal_createLocaleCollator() {
        let localeService = Components.classes["@mozilla.org/intl/nslocaleservice;1"]
                                      .getService(Components.interfaces.nsILocaleService);
        return Components.classes["@mozilla.org/intl/collation-factory;1"]
                         .getService(Components.interfaces.nsICollationFactory)
                         .CreateCollation(localeService.getApplicationLocale());
     },

    /**
     * Sort an array of strings according to the current locale.
     * Modifies aStringArray, returning it sorted.
     */
    sortArrayByLocaleCollator: function cal_sortArrayByLocaleCollator(aStringArray) {
        var localeCollator = cal.createLocaleCollator();
        function compare(a, b) { return localeCollator.compareString(0, a, b); }
        aStringArray.sort(compare);
        return aStringArray;
    },

    /**
     * moves an item to another startDate
     *
     * @param aOldItem             The Item to be modified
     * @param aNewDate             The date at which the new item is going to start
     * @return                     The modified item
     */
    moveItem: function cal_moveItem(aOldItem, aNewDate) {
        let newItem = aOldItem.clone();
        let start = (aOldItem[calGetStartDateProp(aOldItem)] ||
                     aOldItem[calGetEndDateProp(aOldItem)]).clone();
        let isDate = start.isDate;
        start.resetTo(aNewDate.year, aNewDate.month, aNewDate.day,
                      start.hour, start.minute, start.second,
                      start.timezone);
        start.isDate = isDate;
        if (newItem[calGetStartDateProp(newItem)]) {
            newItem[calGetStartDateProp(newItem)] = start;
            let oldDuration = aOldItem.duration;
            if (oldDuration) {
                let newEnd = start.clone();
                newEnd.addDuration(oldDuration);
                newItem[calGetEndDateProp(newItem)] = newEnd;
            }
        } else if (newItem[calGetEndDateProp(newItem)]) {
            newItem[calGetEndDateProp(newItem)] = start;
        }
        return newItem;
    },

    /**
     * sets the 'isDate' property of an item
     *
     * @param aItem         The Item to be modified
     * @param aIsDate       True or false indicating the new value of 'isDate'
     * @return              The modified item
     */
    setItemToAllDay: function cal_setItemToAllDay(aItem, aIsDate){
        let start = aItem[calGetStartDateProp(aItem)];
        let end = aItem[calGetEndDateProp(aItem)];
        if (start || end) {
            let item = aItem.clone();
            if (start && (start.isDate != aIsDate)) {
               start = start.clone();
               start.isDate = aIsDate;
               item[calGetStartDateProp(item)] = start;
            }
            if (end && (end.isDate != aIsDate)) {
               end = end.clone();
               end.isDate = aIsDate;
               item[calGetEndDateProp(item)] = end;
            }
            return item;
        } else {
            return aItem;
        }
    },

    /**
     * checks if the mousepointer of an event resides over a XULBox during an event
     *
     * @param aMouseEvent   The event eg. a 'mouseout' or 'mousedown' event
     * @param aXULBox       The xul element
     * @return              true or false depending on whether the mouse pointer
     *                      resides over the xulelement
     */
    isMouseOverBox: function cal_isMouseOverBox(aMouseEvent, aXULElement) {
        let boxObject = aXULElement.boxObject;
        let boxWidth = boxObject.width;
        let boxHeight = boxObject.height;
        let boxScreenX = boxObject.screenX;
        let boxScreenY = boxObject.screenY;
        let mouseX = aMouseEvent.screenX;
        let mouseY = aMouseEvent.screenY;
        let xIsWithin = (mouseX >= boxScreenX) &&
                        (mouseX <= (boxScreenX + boxWidth));
        let yIsWithin = (mouseY >= boxScreenY) &&
                        (mouseY <= (boxScreenY + boxHeight));
        return (xIsWithin && yIsWithin);
    },

    /**
     * removes those childnodes from a node that contain a specified attribute
     * and where the value of this attribute matches a passed value
     * @param aParentNode   The parent node that contains the child nodes in question
     * @param aAttribute    The name of the attribute
     * @param aAttribute    The value of the attribute
     */
    removeChildElementsByAttribute: function removeChildElementsByAttribute(aParentNode, aAttribute, aValue) {
        let childNode = aParentNode.lastChild;
        while (childNode) {
            let prevChildNode = childNode.previousSibling;
            if (!aAttribute || aAttribute === undefined) {
                aParentNode.removeChild(childNode);
             } else if (!aValue || aValue === undefined) {
                aParentNode.removeChild(childNode);
            } else if (childNode && childNode.hasAttribute(aAttribute)
                && childNode.getAttribute(aAttribute) == aValue) {
                aParentNode.removeChild(childNode);
            }
            childNode = prevChildNode;
        };
    },

    /**
     * Returns the most recent calendar window in an application independent way
     */
    getCalendarWindow: function cal_getCalendarWindow() {
        let wm = Components.classes["@mozilla.org/appshell/window-mediator;1"]
                           .getService(Components.interfaces.nsIWindowMediator);
        return wm.getMostRecentWindow("calendarMainWindow") ||
               wm.getMostRecentWindow("mail:3pane");
    },

    /**
     * Adds an observer listening for the topic.
     *
     * @param func function to execute on topic
     * @param topic topic to listen for
     * @param oneTime whether to listen only once
     */
    addObserver: function cal_addObserver(func, topic, oneTime) {
        let observer = { // nsIObserver:
            observe: function cal_addObserver_observe(subject, topic_, data) {
                if (topic == topic_) {
                    if (oneTime) {
                        Components.classes["@mozilla.org/observer-service;1"]
                                  .getService(Components.interfaces.nsIObserverService)
                                  .removeObserver(this, topic);
                    }
                    func(subject, topic, data);
                }
            }
        };
        Components.classes["@mozilla.org/observer-service;1"]
                  .getService(Components.interfaces.nsIObserverService)
                  .addObserver(observer, topic, false /* don't hold weakly */);
    },

    /**
     * Adds an xpcom shutdown observer.
     *
     * @param func function to execute
     */
    addShutdownObserver: function cal_addShutdownObserver(func) {
        cal.addObserver(func, "xpcom-shutdown", true /* one time */);
    },

    /**
     * Due to wrapped js objects, some objects may have cyclic references.
     * You can register properties of objects to be cleaned up on xpcom-shutdown.
     *
     * @param obj    object
     * @param prop   property to be deleted on shutdown
     *               (if null, |object| will be deleted)
     */
    registerForShutdownCleanup: shutdownCleanup
};

// local to this module;
// will be used to clean up global objects on shutdown
// some objects have cyclic references due to wrappers
function shutdownCleanup(obj, prop) {
    if (!shutdownCleanup.mEntries) {
        shutdownCleanup.mEntries = [];
        cal.addShutdownObserver(function() {
                for each (let entry in shutdownCleanup.mEntries) {
                    if (entry.mProp) {
                        delete entry.mObj[entry.mProp];
                    } else {
                        delete entry.mObj;
                    }
                }
                delete shutdownCleanup.mEntries;
            });
    }
    shutdownCleanup.mEntries.push({ mObj: obj, mProp: prop });
}

// local to this module;
// will be used to generate service accessor functions, getIOService()
function generateServiceAccessor(id, iface) {
    return function this_() {
        if (!("mService" in this_)) {
            this_.mService = Components.classes[id].getService(iface);
            shutdownCleanup(this_, "mService");
        }
        return this_.mService;
    };
}

// Interim import of all symbols into cal:
// This should serve as a clean start for new code, e.g. new code could use
// cal.createDatetime instead of plain createDatetime NOW.
cal.loadScripts(["calUtils.js"], cal);
// Some functions in calUtils.js refer to other in the same file, thus include
// the code in global scope (although only visible to this module file), too:
cal.loadScripts(["calUtils.js"], cal.__parent__);
