@echo off
setlocal

set PATH=c:\gcdev\gnucash-2.6.19\gnucash\inst\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\gnucash\inst\lib;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\gnucash\inst\lib\gnucash;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\boost\lib;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\enchant\lib;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\libsoup\lib;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\mysql\lib;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\pgsql\lib;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\libxslt\lib;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\mingw\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\gnutls\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\goffice\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\libgsf\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\pcre\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\gnome\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\guile\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\webkit\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\regex\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\aqbanking\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\gwenhywfar\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\libofx\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\opensp\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\libdbi\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\sqlite3\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\mysql\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\pgsql\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\enchant\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\libsoup\bin;%PATH%
set PATH=c:\gcdev\gnucash-2.6.19\libxslt\bin;%PATH%

start gnucash %*
