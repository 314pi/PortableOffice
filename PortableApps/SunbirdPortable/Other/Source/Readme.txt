Sunbird Portable Launcher
=========================
Copyright 2004-2007 John T. Haller of PortableApps.com

Website: http://PortableApps.com/SunbirdPortable

This software is OSI Certified Open Source Software.
OSI Certified is a certification mark of the Open Source Initiative.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

ABOUT SUNBIRD PORTABLE
======================
The Sunbird Portable Launcher allows you to run Sunbird from a removable drive
whose letter changes as you move it to another computer.  The calendar and the
profile can be entirely self-contained on the drive and then used on any Windows
computer.


LICENSE
=======
This code is released under the GPL.  Within the SunbirdPortableSource directory
you will find the code (SunbirdPortable.nsi) as well as the full GPL license
(License.txt).  If you use the launcher or code in your own product, please give
proper and prominent attribution.


INSTALLATION / DIRECTORY STRUCTURE
==================================
By default, the program expects the following directory structure:

-\ <--- Directory with SunbirdPortable.exe
	+\App\
		+\sunbird\
	+\Data\
		+\profile\
		+\settings\
		
The above files may also be placed in a SunbirdPortable directory with the 
SunbirdPortable.exe launcher a directory above that.

It can be used in other directory configurations by including the SunbirdPortable.ini
file in the same directory as SunbirdPortable.exe and configuring it as detailed in
the INI file section below.


SUNBIRDPORTABLE.INI CONFIGURATION
=================================
The Sunbird Portable Launcher will look for an ini file called SunbirdPortable.ini
within its directory.  If you are happy with the default options, it is not necessary,
though.  There is an example INI included with this package to get you started.  The
INI file is formatted as follows:

[SunbirdPortable]
SunbirdDirectory=App\sunbird
ProfileDirectory=Data\profile
SettingsDirectory=Data\settings
SunbirdExecutable=sunbird.exe
AdditionalParameters=
DisableSplashScreen=false
AllowMultipleInstances=false
DisableIntelligentStart=false
RunLocally=false

The SunbirdDirectory, ProfileDrectory and SettingsDirectory entries
should be set to the *relative* path to the directories containing sunbird.exe, your
profile, your plugins, etc. from the current directory.  All must be a subdirectory
(or multiple subdirectories) of the directory containing SunbirdPortable.exe.  The
default entries for these are described in the installation section above.

The SunbirdExecutable entry allows you to set the Sunbird Portable Launcher to use
an alternate EXE call to launch Sunbird.  This is helpful if you are using a machine
that is set to deny sunbird.exe from running.  You'll need to rename the sunbird.exe
file and then enter the name you gave it on the SunbirdExecutable= line of the INI.

The AdditionalParameters entry allows you to pass additional commandline parameter
entries to sunbird.exe.  Whatever you enter here will be appended to the call to
sunbird.exe.

The WaitForSunbird entry allows you to set the launcher to remain active until Sunbird has
closed.  This is useful if you wish to have another process wait until Sunbird Portable
has closed.  The launcher will automatically wait for Sunbird to close in cases where it
needs to clean up after sunbird.exe (for instance, to clean up %APPDATA%\Mozilla\Sunbird
when there is no locally-installed Sunbird).

The DisableSplashScreen entry allows you to run the Sunbird Portable Launcher without the
splash screen showing up.  The default is false.

The AllowMultipleInstances entry will allow Sunbird Portable to run alongside your
regular local copy of Sunbird if you set it to true (lowercase).  The default is false.

The DisableIntelligentStart entry allows you to to have Sunbird Portable run its chrome
and component registry fixes on every start.  Normally, it tracks when you've moved to a
new path (switching PCs for instance) and only processes the chrome and component
registry when you do.  By skipping it when the path is the same, Sunbird Portable starts
up faster.  But, if you copy a profile into Sunbird Portable between sessions (it handles
a copy in on first run automatically), it won't know to process these.  This usually
happens if you copy a profile into Sunbird Portable from your local PC on a regular basis
with a sync utility that doesn't work with Sunbird Portable (like PortableApps Sync
does).  Setting this to true causes Sunbird Portable to process each on every start.

The RunLocally entry allows you to set Sunbird Portable to copy your profile, plugins and
Sunbird binaries to the local machine's temp directory.  This can be useful for instances
where you'd like to run Sunbird Portable from a CD (aka Sunbird Portable Live) or when
you're working on a machine that may have spyware or viruses and you'd like to keep your
device set to read-only mode.  The only caveat is, of course, that any changes you make
that session (calendar, tasks, etc) aren't saved back to your device.  When done
running, the local temp directories used by Sunbird Portable are removed. RunLocally does
not currently work with AllowMultipleInstances as it cannot track which version of
Sunbird is running.


PROGRAM HISTORY / ABOUT THE AUTHORS
===================================
This launcher contains elements from multiple sources.  It began as a batch file launcher
written by myself (John T. Haller) and posted to the mozillaZine.org thread about running
Firefox from a USB key.  tracon later released a launcher called fflaunch which I
enhanced and re-released as Firefox Portable.  mai9 later improved on fflaunch's
techniques and released it as Free The Fox.  Multiple suggestions back and forth as well
as improvements from mai9, myself and others lead to the launcher we have today.  This
most recent version adds some of mai9's methods for running multiple copies of Firefox
and my methods for allowing the code to be run from anywhere on first launch (as opposed
to a specific directory), pass in commandline options, run without an ini file and allow
the use of profiles from local installations.


CURRENT LIMITATIONS
===================
INCOMPATIBLE EXTENSIONS - Certain extensions use additional local files or prefs.js to
store information, neither of which are handled by the Sunbird Portable launcher when
moving between machines.