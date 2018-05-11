
======================================================================
OpenOffice 4.1.5 ReadMe
======================================================================


For latest updates to this readme file, see http://www.openoffice.org/welcome/readme.html

This file contains important information about this program. Please read this information very carefully before starting work.

The Apache OpenOffice Community, responsible for the development of this product, would like to invite you to participate as a community member. As a new user, you can check out the OpenOffice community site with helpful information at http://openoffice.apache.org

Also read the sections below about getting involved in the Apache OpenOffice project.

Is OpenOffice really free for any user? 
----------------------------------------------------------------------

OpenOffice is free for use by everybody. You may take this copy of OpenOffice and install it on as many computers as you like, and use it for any purpose you like (including commercial, government, public administration and educational use). For further details see the license text delivered together with OpenOffice or http://www.openoffice.org/license.html

Why is OpenOffice free for any user?
----------------------------------------------------------------------

You can use this copy of OpenOffice today free of charge because individual contributors and corporate sponsors have designed, developed, tested, translated, documented, supported, marketed, and helped in many other ways to make OpenOffice what it is today - the world's leading open-source office software.

If you appreciate their efforts, and would like to ensure Apache OpenOffice continues into the future, please consider contributing to the project - see http://openoffice.apache.org/get-involved.html for details on contributing time and http://www.apache.org/foundation/contributing.html for details on donations. Everyone has a contribution to make.

----------------------------------------------------------------------
Notes on Installation
----------------------------------------------------------------------

OpenOffice requires a recent version of JAVA for full functionality; JAVA can be downloaded from http://java.com.

System Requirements
----------------------------------------------------------------------

* Microsoft Windows XP, Vista, Windows 7 or Windows 8
* Pentium III or later processor
* 256 MB RAM (512 MB RAM recommended)
* Up to 1.5 GB available hard disk space
* 1024x768 resolution (higher resolution recommended), at least 256 colors

Please be aware that administrator rights are needed for the installation process.

Registration of OpenOffice as default application for Microsoft Office formats can be forced or suppressed by using the following command line switches with the installer:

* /msoreg=1 will force registration of OpenOffice as default application for Microsoft Office formats.
* /msoreg=0 will suppress registration of OpenOffice as default application for Microsoft Office formats.

If you perform an administrative installation using setup /a, you need to make sure that the file msvcr100.dll is installed on the system. This file is required for OpenOffice to start after an administrative installation. You can get the file from http://www.microsoft.com/en-us/download/details.aspx?id=5555

Please be aware that administrator rights are needed for the installation process.

Please make sure you have enough free memory in the temporary directory on your system and that read, write and run access rights have been granted. Close all other programs before starting the installation.

----------------------------------------------------------------------
Problems During Program Startup
----------------------------------------------------------------------

Difficulties starting OpenOffice (e.g. applications hang) as well as problems with the screen display are often caused by the graphics card driver. If these problems occur, please update your graphics card driver or try using the graphics driver delivered with your operating system. Difficulties displaying 3D objects can often be solved by deactivating the option "Use OpenGL" under 'Tools - Options - OpenOffice - View - 3D view'.

----------------------------------------------------------------------
ALPS/Synaptics notebook touchpads in Windows
----------------------------------------------------------------------

Due to a Windows driver issue, you cannot scroll through OpenOffice documents when you slide your finger across an ALPS/Synaptics touchpad.

To enable touchpad scrolling, add the following lines to the "C:\Program Files\Synaptics\SynTP\SynTPEnh.ini" configuration file, and restart your computer:

[OpenOffice]

FC = "SALFRAME"

SF = 0x10000000

SF |= 0x00004000

The location of the configuration file might vary on different versions of Windows.

----------------------------------------------------------------------
Shortcut Keys
----------------------------------------------------------------------

Only shortcut keys (key combinations) not used by the operating system can be used in OpenOffice. If a key combination in OpenOffice does not work as described in the OpenOffice Help, check if that shortcut is already used by the operating system. To rectify such conflicts, you can change the keys assigned by your operating system. Alternatively, you can change almost any key assignment in OpenOffice. For more information on this topic, refer to the OpenOffice Help or the Help documention of your operating system.

----------------------------------------------------------------------
Problems When Sending Documents as E-mails From OpenOffice
----------------------------------------------------------------------

When sending a document via 'File - Send - Document as E-mail' or 'Document as PDF Attachment' problems might occur (program crashes or hangs). This is due to the Windows system file "Mapi" (Messaging Application Programming Interface) which causes problems in some file versions. Unfortunately, the problem cannot be narrowed down to a certain version number. For more information visit http://www.microsoft.com to search the Microsoft Knowledge Base for "mapi dll".

----------------------------------------------------------------------
Important Accessibility Notes
----------------------------------------------------------------------

For more information on the accessibility features in OpenOffice, see http://www.openoffice.org/access/

----------------------------------------------------------------------
User Support
----------------------------------------------------------------------

The main support page http://support.openoffice.org/ offers various possibilities for help with OpenOffice. Your question may have already been answered - check the Community Forum at http://forum.openoffice.org or search the archives of the 'users@openoffice.apache.org' mailing list at http://openoffice.apache.org/mailing-lists.html. Alternatively, you can send in your questions to users@openoffice.apache.org. How to subscribe to the list (to get an email response) is explained on this page: http://openoffice.apache.org/mailing-lists.html.

Also check the FAQ section at http://wiki.openoffice.org/wiki/Documentation/FAQ.

----------------------------------------------------------------------
Reporting Bugs & Issues
----------------------------------------------------------------------

The OpenOffice Web site hosts BugZilla, our mechanism for reporting, tracking and solving bugs and issues. We encourage all users to feel entitled and welcome to report issues that may arise on your particular platform. Energetic reporting of issues is one of the most important contributions that the user community can make to the ongoing development and improvement of the suite.

----------------------------------------------------------------------
Getting Involved
----------------------------------------------------------------------

The OpenOffice Community would very much benefit from your active participation in the development of this important open source project.

As a user, you are already a valuable part of the suite's development process and we would like to encourage you to take an even more active role with a view to being a long-term contributor to the community. Please join and check out the user page at http://openoffice.apache.org/get-involved.html

How to Start
----------------------------------------------------------------------

The best way to start contributing is to subscribe to one or more of the mailing lists, lurk for a while, and gradually use the mail archives to familiarize yourself with many of the topics covered since the OpenOffice source code was released back in October 2000. When you're comfortable, all you need to do is send an email self-introduction and jump right in.

Subscribe
----------------------------------------------------------------------

Here are a few of the OpenOffice mailing lists to which you can subscribe at http://openoffice.apache.org/mailing-lists.html

* News: announce@openoffice.apache.org *recommended to all users* (light traffic)
* Main user forum: users@openoffice.apache.org *easy way to lurk on discussions* (heavy traffic)
* General project development and discussion list: dev@openoffice.apache.org (heavy traffic)

Joining the Project
----------------------------------------------------------------------

You can make major contributions to this important open source project even if you have limited software design or coding experience. Yes, you!

At http://openoffice.apache.org/get-involved.html you will find a first overview where you can start with, ranging from Localization, QA, user support to some real core coding projects. If you are not a developer, you can help with Documentation or Marketing, for example. The OpenOffice marketing is applying both guerrilla and traditional commercial techniques to marketing open source software, and we are doing it across language and cultural barriers, so you can help just by spreading the word and telling a friend about this office suite.

You can help by joining the marketing mailing list marketing@openoffice.apache.org where you can provide point communication contact with press, media, government agencies, consultants, schools, Linux Users Groups and developers in your country and local community.

We hope you enjoy working with the new OpenOffice 4.1.5 and will join us online.

The Apache OpenOffice Community

----------------------------------------------------------------------
Used / Modified Source Code
----------------------------------------------------------------------

For detailed information about used and/or modified source code, see the NOTICE file which is part of the installation.