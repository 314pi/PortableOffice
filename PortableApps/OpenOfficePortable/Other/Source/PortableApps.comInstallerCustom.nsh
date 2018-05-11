Var InstallerCustomCodeUpgradeFrom
Var InstallerCustomCodeUpgradeFromInstallType

!macro CustomCodePreInstall
	ReadINIStr $InstallerCustomCodeUpgradeFrom "$INSTDIR\App\AppInfo\appinfo.ini" "Version" "PackageVersion"
	ReadINIStr $InstallerCustomCodeUpgradeFromInstallType "$INSTDIR\App\AppInfo\appinfo.ini" "Details" "InstallType"
	${If} $InstallerCustomCodeUpgradeFrom != ""
		${VersionCompare} $InstallerCustomCodeUpgradeFrom "3.5.3.0" $1
		${If} $1 == 2
			;Preserve existing fonts
			CreateDirectory "$INSTDIR\Data\"
			Rename "$INSTDIR\App\openoffice\Basis\share\fonts\truetype" "$INSTDIR\Data\fonts"
			;Remove defaults so no duplicates
			Delete "$INSTDIR\Data\fonts\Arimo-Bold.ttf"
			Delete "$INSTDIR\Data\fonts\Arimo-BoldItalic.ttf"
			Delete "$INSTDIR\Data\fonts\Arimo-Italic.ttf"
			Delete "$INSTDIR\Data\fonts\Arimo-Regular.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSans.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSansCondensed.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSansCondensed_Bold.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSansCondensed_BoldOblique.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSansCondensed_Oblique.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSansMono.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSansMono_Bold.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSansMono_BoldOblique.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSansMono_Oblique.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSans_Bold.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSans_BoldOblique.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSans_ExtraLight.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSans_Oblique.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSerif.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSerifCondensed.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSerifCondensed_Bold.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSerifCondensed_BoldItalic.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSerifCondensed_Italic.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSerif_Bold.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSerif_BoldItalic.ttf"
			Delete "$INSTDIR\Data\fonts\DejaVuSerif_Italic.ttf"
			Delete "$INSTDIR\Data\fonts\GenBasB.ttf"
			Delete "$INSTDIR\Data\fonts\GenBasBI.ttf"
			Delete "$INSTDIR\Data\fonts\GenBasI.ttf"
			Delete "$INSTDIR\Data\fonts\GenBasR.ttf"
			Delete "$INSTDIR\Data\fonts\GenBkBasB.ttf"
			Delete "$INSTDIR\Data\fonts\GenBkBasBI.ttf"
			Delete "$INSTDIR\Data\fonts\GenBkBasI.ttf"
			Delete "$INSTDIR\Data\fonts\GenBkBasR.ttf"
			Delete "$INSTDIR\Data\fonts\opens___.ttf"	
		${EndIf}
	${EndIf}
!macroend

!macro CustomCodePostInstall
	;Reset fontnames
	${If} ${FileExists} "$INSTDIR\Data\settings\user\config\fontnames.dat"
		Delete "$INSTDIR\Data\settings\user\config\fontnames.dat"
		CopyFiles /SILENT "$INSTDIR\App\DefaultData\settings\user\config\fontnames.dat" "$INSTDIR\Data\settings\user\config"
	${EndIf}

	;Change installer languages into language code
	StrCpy $1 "NotDone"
	${If} $LANGUAGE == "1078" ;Afrikaans
		StrCpy $1 "af"
	${EndIf}
	${If} $LANGUAGE == "1025" ;Arabic
		StrCpy $1 "ar"
	${EndIf}
	${If} $LANGUAGE == "1093" ;Bengali
		StrCpy $1 "bn"
	${EndIf}
	${If} $LANGUAGE == "1059" ;Belarussian
		StrCpy $1 "be"
	${EndIf}
	${If} $LANGUAGE == "1026" ;Bulgarian
		StrCpy $1 "bg"
	${EndIf}
	${If} $LANGUAGE == "1027" ;Catalan
		StrCpy $1 "ca"
	${EndIf}
	${If} $LANGUAGE == "1029" ;Czech
		StrCpy $1 "cs"
	${EndIf}
	${If} $LANGUAGE == "1030" ;Danish
		StrCpy $1 "da"
	${EndIf}
	${If} $LANGUAGE == "1031" ;German
		StrCpy $1 "de"
	${EndIf}
	${If} $LANGUAGE == "1032" ;Greek
		StrCpy $1 "el"
	${EndIf}
	${If} $LANGUAGE == "1034" ;Spanish
		StrCpy $1 "es"
	${EndIf}
	${If} $LANGUAGE == "3082" ;SpanishInternational (same as Spanish)
		StrCpy $1 "es"
	${EndIf}
	${If} $LANGUAGE == "1061" ;Estonian
		StrCpy $1 "et"
	${EndIf}
	${If} $LANGUAGE == "1035" ;Finnish
		StrCpy $1 "fi"
	${EndIf}
	${If} $LANGUAGE == "1036" ;French
		StrCpy $1 "fr"
	${EndIf}
	${If} $LANGUAGE == "1084" ;Gaelic
		StrCpy $1 "gd"
	${EndIf}
	${If} $LANGUAGE == "1110" ;Galician
		StrCpy $1 "gl"
	${EndIf}
	${If} $LANGUAGE == "1095" ;Gujarati
		StrCpy $1 "gu"
	${EndIf}
	${If} $LANGUAGE == "1037" ;Hebrew
		StrCpy $1 "he"
	${EndIf}
	${If} $LANGUAGE == "1050" ;Croatian
		StrCpy $1 "hr"
	${EndIf}
	${If} $LANGUAGE == "1081" ;Hindi
		StrCpy $1 "hi"
	${EndIf}
	${If} $LANGUAGE == "1038" ;Hungarian
		StrCpy $1 "hu"
	${EndIf}
	${If} $LANGUAGE == "1040" ;Italian
		StrCpy $1 "it"
	${EndIf}
	${If} $LANGUAGE == "1041" ;Japanese
		StrCpy $1 "ja"
	${EndIf}
	${If} $LANGUAGE == "1035" ;Finnish
		StrCpy $1 "fi"
	${EndIf}
	${If} $LANGUAGE == "1042" ;Korean
		StrCpy $1 "ko"
	${EndIf}
	${If} $LANGUAGE == "1063" ;Lithuanian
		StrCpy $1 "lt"
	${EndIf}
	${If} $LANGUAGE == "1062" ;Latvian
		StrCpy $1 "lv"
	${EndIf}
	${If} $LANGUAGE == "1121" ;Nepali
		StrCpy $1 "ne"
	${EndIf}
	${If} $LANGUAGE == "1043" ;Dutch
		StrCpy $1 "nl"
	${EndIf}
	${If} $LANGUAGE == "1044" ;Norwegian
	${OrIf} $LANGUAGE == "2068" ;Norwegian
		StrCpy $1 "no"
	${EndIf}
	${If} $LANGUAGE == "1045" ;Polish
		StrCpy $1 "pl"
	${EndIf}
	${If} $LANGUAGE == "2070" ;Portuguese
		StrCpy $1 "pt"
	${EndIf}
	${If} $LANGUAGE == "1046" ;PortugueseBR
		StrCpy $1 "pt-BR"
	${EndIf}
	${If} $LANGUAGE == "1048" ;Romanian
		StrCpy $1 "ro"
	${EndIf}
	${If} $LANGUAGE == "1049" ;Russian
		StrCpy $1 "ru"
	${EndIf}
	${If} $LANGUAGE == "1051" ;Slovak
		StrCpy $1 "sk"
	${EndIf}
	${If} $LANGUAGE == "1060" ;Slovenian
		StrCpy $1 "sl"
	${EndIf}
	${If} $LANGUAGE == "3098" ;Serbian
		StrCpy $1 "sr"
	${EndIf}
	${If} $LANGUAGE == "2074" ;SerbianLatin
		StrCpy $1 "sh"
	${EndIf}
	${If} $LANGUAGE == "1115" ;Sinhalese
		StrCpy $1 "si"
	${EndIf}
	${If} $LANGUAGE == "1053" ;Swedish
		StrCpy $1 "sv"
	${EndIf}
	${If} $LANGUAGE == "1098" ;Teluga
		StrCpy $1 "te"
	${EndIf}
	${If} $LANGUAGE == "1054" ;Thai
		StrCpy $1 "th"
	${EndIf}
	${If} $LANGUAGE == "1055" ;Turkish
		StrCpy $1 "tr"
	${EndIf}
	${If} $LANGUAGE == "1058" ;Ukrainian
		StrCpy $1 "uk"
	${EndIf}
	${If} $LANGUAGE == "1066" ;Vietnamese
		StrCpy $1 "vi"
	${EndIf}
	${If} $LANGUAGE == "2052" ;SimpChinese
		StrCpy $1 "zh-CN"
	${EndIf}
	${If} $LANGUAGE == "1028" ;TradChinese
			StrCpy $1 "zh-TW"
	${EndIf}
	${If} $LANGUAGE == "1077" ;Zulu
			StrCpy $1 "zu"
	${EndIf}
	${If} $LANGUAGE == "2057" ;EnglishGB
			StrCpy $1 "en-GB"
	${EndIf}
	
	${If} $1 == "NotDone" ;Fallback to English
		StrCpy $1 "en-US"
	${EndIf}
	
	;If xcu doesn't exist, create it from scratch and add the language selection
	${IfNot} ${FileExists} "$INSTDIR\Data\settings\user\registrymodifications.xcu"
		WriteINIStr "$INSTDIR\App\openoffice\program\soffice.ini" "Bootstrap" "STARTLANG" "$0"
		CreateDirectory "$INSTDIR\Data"
		CopyFiles /SILENT "$INSTDIR\App\DefaultData\*.*" "$INSTDIR\Data"
		CreateDirectory "$INSTDIR\Data\temp"
		Delete "$INSTDIR\Data\settings\user\registrymodifications.xcu"
		FileOpen $0 "$INSTDIR\Data\settings\user\registrymodifications.xcu" w
		FileWrite $0 `<?xml version="1.0" encoding="UTF-8"?>`
		FileWrite $0 `<oor:items xmlns:oor="http://openoffice.org/2001/registry" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Help"><prop oor:name="ExtendedTip" oor:op="fuse"><value>false</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Help/HelpAgent"><prop oor:name="Enabled" oor:op="fuse"><value>true</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Help/HelpAgent"><prop oor:name="RetryLimit" oor:op="fuse"><value>3</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Help/HelpAgent"><prop oor:name="Timeout" oor:op="fuse"><value>30</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Help"><prop oor:name="HelpStyleSheet" oor:op="fuse"><value>Default</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Help"><prop oor:name="Locale" oor:op="fuse"><value></value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Help"><prop oor:name="System" oor:op="fuse"><value>WIN</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Help"><prop oor:name="Tip" oor:op="fuse"><value>false</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Internal"><prop oor:name="CurrentTempURL" oor:op="fuse"><value></value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Misc"><prop oor:name="FirstRun" oor:op="fuse"><value>false</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Path/Current"><prop oor:name="Temp" oor:op="fuse"><value xsi:nil="true"/></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Path/Current"><prop oor:name="Temp" oor:op="fuse"><value xsi:nil="true"/></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Path/Current"><prop oor:name="Work" oor:op="fuse"><value xsi:nil="true"/></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Path/Info"><prop oor:name="WorkPathChanged" oor:op="fuse"><value>true</value></prop></item>`	
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Linguistic/General"><prop oor:name="UILocale" oor:op="fuse"><value>$1</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Paths/Paths/org.openoffice.Office.Paths:NamedPath['Temp']"><prop oor:name="WritePath" oor:op="fuse"><value>file:///Z:/Temp</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Paths/Paths/org.openoffice.Office.Paths:NamedPath['Work']"><prop oor:name="WritePath" oor:op="fuse"><value>DEFAULT--WORK--PATH</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooLocale" oor:op="fuse"><value>$1</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Setup/Office/Factories/org.openoffice.Setup:Factory['com.sun.star.frame.StartModule']"><prop oor:name="ooSetupFactoryWindowAttributes" oor:op="fuse"><value>83,105,1424,722;1;1;0,0,0,0;</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Setup/Office"><prop oor:name="LastCompatibilityCheckID" oor:op="fuse"><value>330m19(Build:202)</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Setup/Office"><prop oor:name="ooSetupInstCompleted" oor:op="fuse"><value>true</value></prop></item>`
		FileWrite $0 `<item oor:path="/org.openoffice.Office.Writer/Layout/Other"><prop oor:name="ApplyCharUnit" oor:op="fuse"><value>false</value></prop></item>`
		${If} $1 == "de"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>de-DE</value></prop></item>`
		${ElseIf} $1 == "it"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>it-IT</value></prop></item>`
		${ElseIf} $1 == "fr"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>fr-FR</value></prop></item>`
		${ElseIf} $1 == "ar"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>ar-SA</value></prop></item>`
		${ElseIf} $1 == "nl"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>nl-NL</value></prop></item>`
		${ElseIf} $1 == "es"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>es-AR</value></prop></item>`
		${ElseIf} $1 == "sv"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>sv-SE</value></prop></item>`
		${ElseIf} $1 == "sr"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>sr-RS</value></prop></item>`
		${ElseIf} $1 == "sh"
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>sh-RS</value></prop></item>`
		${Else}
			FileWrite $0 `<item oor:path="/org.openoffice.Setup/L10N"><prop oor:name="ooSetupSystemLocale" oor:op="fuse"><value>$1</value></prop></item>`
		${EndIf}
		FileWrite $0 `</oor:items>`
		
		
		
		;FileWrite $0 `<item oor:path="/org.openoffice.Office.Common/Path/Current"><prop oor:name="Backup" oor:op="fuse"><value xsi:nil="true"/></prop></item>`
		;FileWeite $0 `<item oor:path="/org.openoffice.Office.Paths/Paths/org.openoffice.Office.Paths:NamedPath['Backup']"><prop oor:name="WritePath" oor:op="fuse"><value>file:///P:/PortableApps/LibreOffice/Data/backups</value></prop></item>`
		;FileWrite $0 `<item oor:path="/org.openoffice.Setup/Office/Factories/org.openoffice.Setup:Factory['com.sun.star.frame.StartModule']"><prop oor:name="ooSetupFactoryWindowAttributes" oor:op="fuse"><value>83,105,1424,722;1;0,0,0,0;</value></prop></item><item oor:path="/org.openoffice.Setup/Office"><prop oor:name="LastCompatibilityCheckID" oor:op="fuse"><value>330m19(Build:8)</value></prop></item><item oor:path="/org.openoffice.Setup/Office"><prop oor:name="OfficeRestartInProgress" oor:op="fuse"><value>false</value></prop></item><item oor:path="/org.openoffice.Setup/Office"><prop oor:name="ooSetupInstCompleted" oor:op="fuse"><value>true</value></prop></item></oor:items>`
		FileClose $0
	${EndIf}
	
;See if the user selected to remove additional languages
	SectionGetFlags ${OPTIONALSECTIONIDX} $0
	IntOp $0 $0 & ${SF_SELECTED}
	${If} $0 >= ${SF_SELECTED}
		;Remove dictionaries
		Rename "$INSTDIR\App\openoffice\share\extensions\dict-$1" "$INSTDIR\App\openoffice\share\extensions\keep-$1"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-af"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-an"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-ar"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-be"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-bg"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-bn"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-br"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-ca"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-cs"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-da"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-de"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-el"
		;RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-en" - Don't remove English
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-es"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-et"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-fr"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-gd"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-gl"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-gu"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-he"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-hi"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-hr"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-hu"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-it"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-ku-TR"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-lt"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-lv"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-ne"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-nl"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-no"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-oc"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-pl"
		${If} $1 != "pt" ;Keep alternate dictionaries
		${AndIf} $1 != "pt-BR" ;Keep alternate dictionaries
			RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-pt"
			RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-pt-BR"
			RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-pt-PT"
		${EndIf}
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-ro"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-ru"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-si"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-sk"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-sl"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-sr"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-sv"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-te"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-th"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-uk"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-vi"
		RMDir /r "$INSTDIR\App\openoffice\share\extensions\dict-zu"
		Rename "$INSTDIR\App\openoffice\share\extensions\keep-$1" "$INSTDIR\App\openoffice\share\extensions\dict-$1"
		
		;Resources
		Rename "$INSTDIR\App\openoffice\program\resource" "$INSTDIR\App\openoffice\program\resource-delete"
		CreateDirectory "$INSTDIR\App\openoffice\program\resource"
		CopyFiles /SILENT "$INSTDIR\App\openoffice\program\resource-delete\*en-GB.res" "$INSTDIR\App\openoffice\program\resource"
		CopyFiles /SILENT "$INSTDIR\App\openoffice\program\resource-delete\*en-US.res" "$INSTDIR\App\openoffice\program\resource"
		CopyFiles /SILENT "$INSTDIR\App\openoffice\program\resource-delete\*$1.res" "$INSTDIR\App\openoffice\program\resource"
		CopyFiles /SILENT "$INSTDIR\App\openoffice\program\resource-delete\*$1-BR.res" "$INSTDIR\App\openoffice\program\resource"
		CopyFiles /SILENT "$INSTDIR\App\openoffice\program\resource-delete\*$1-ZA.res" "$INSTDIR\App\openoffice\program\resource"
		CopyFiles /SILENT "$INSTDIR\App\openoffice\program\resource-delete\*$1-XV.res" "$INSTDIR\App\openoffice\program\resource"
		CopyFiles /SILENT "$INSTDIR\App\openoffice\program\resource-delete\*$1-IN.res" "$INSTDIR\App\openoffice\program\resource"
		CopyFiles /SILENT "$INSTDIR\App\openoffice\program\resource-delete\*$1-TZ.res" "$INSTDIR\App\openoffice\program\resource"
		RMDir /r "$INSTDIR\App\openoffice\program\resource-delete"
		
		;Remove the autotext entries
		CreateDirectory "$INSTDIR\App\openoffice\share\autotextkeep"
		Rename "$INSTDIR\App\openoffice\share\autotext\$1" "$INSTDIR\App\openoffice\share\autotextkeep\$1"
		Rename "$INSTDIR\App\openoffice\share\autotext\$1-XV" "$INSTDIR\App\openoffice\share\autotextkeep\$1-XV"
		Rename "$INSTDIR\App\openoffice\share\autotext\en-GB" "$INSTDIR\App\openoffice\share\autotextkeep\en-GB"
		Rename "$INSTDIR\App\openoffice\share\autotext\en-US" "$INSTDIR\App\openoffice\share\autotextkeep\en-US"
		RMDir /r "$INSTDIR\App\openoffice\share\autotext"
		Rename "$INSTDIR\App\openoffice\share\autotextkeep" "$INSTDIR\App\openoffice\share\autotext"
		
		;Remove the regsitry entries
		Rename "$INSTDIR\App\openoffice\share\registry\res_$1.xcd" "$INSTDIR\App\openoffice\readmes\keep_$1.xcd"
		Rename "$INSTDIR\App\openoffice\share\registry\res_$1-XV.xcd" "$INSTDIR\App\openoffice\readmes\keep_$1-XV.xcd"
		Rename "$INSTDIR\App\openoffice\share\registry\res_$1-IN.xcd" "$INSTDIR\App\openoffice\readmes\keep_$1-IN.xcd"
		Rename "$INSTDIR\App\openoffice\share\registry\res_$1-TZ.xcd" "$INSTDIR\App\openoffice\readmes\keep_$1-TZ.xcd"
		Rename "$INSTDIR\App\openoffice\share\registry\res_en-US.xcd" "$INSTDIR\App\openoffice\readmes\keep_en-US.xcd"
		Rename "$INSTDIR\App\openoffice\share\registry\res_en-GB.xcd" "$INSTDIR\App\openoffice\readmes\keep_en-GB.xcd"
		Delete "$INSTDIR\App\openoffice\share\registry\res_*.xcd"
		Rename "$INSTDIR\App\openoffice\readmes\keep_en-US.xcd" "$INSTDIR\App\openoffice\share\registry\res_en-US.xcd"
		Rename "$INSTDIR\App\openoffice\readmes\keep_en-GB.xcd" "$INSTDIR\App\openoffice\share\registry\res_en-GB.xcd"
		Rename "$INSTDIR\App\openoffice\readmes\keep_$1.xcd" "$INSTDIR\App\openoffice\share\registry\res_$1.xcd"
		Rename "$INSTDIR\App\openoffice\readmes\keep_$1-XV.xcd" "$INSTDIR\App\openoffice\share\registry\res_$1-XV.xcd"
		Rename "$INSTDIR\App\openoffice\readmes\keep_$1-IN.xcd" "$INSTDIR\App\openoffice\share\registry\res_$1-IN.xcd"
		Rename "$INSTDIR\App\openoffice\readmes\keep_$1-TZ.xcd" "$INSTDIR\App\openoffice\share\registry\res_$1-TZ.xcd"

		;Remove the templates
		CreateDirectory "$INSTDIR\App\openoffice\share\templatekeep"
		Rename "$INSTDIR\App\openoffice\share\template\layout" "$INSTDIR\App\openoffice\share\templatekeep\layout"
		Rename "$INSTDIR\App\openoffice\share\template\wizard" "$INSTDIR\App\openoffice\share\templatekeep\wizard"
		Rename "$INSTDIR\App\openoffice\share\template\$1" "$INSTDIR\App\openoffice\share\templatekeep\$1"
		Rename "$INSTDIR\App\openoffice\share\template\en-GB" "$INSTDIR\App\openoffice\share\templatekeep\en-GB"
		Rename "$INSTDIR\App\openoffice\share\template\en-US" "$INSTDIR\App\openoffice\share\templatekeep\en-US"
		RMDir /r "$INSTDIR\App\openoffice\share\template"
		Rename "$INSTDIR\App\openoffice\share\templatekeep" "$INSTDIR\App\openoffice\share\template"

		;Remove the wordbooks
		CreateDirectory "$INSTDIR\App\openoffice\share\wordbookkeep"
		Rename "$INSTDIR\App\openoffice\share\wordbook\$1" "$INSTDIR\App\openoffice\share\wordbookkeep\$1"
		Rename "$INSTDIR\App\openoffice\share\wordbook\$1-XV" "$INSTDIR\App\openoffice\share\wordbookkeep\$1-XV"
		Rename "$INSTDIR\App\openoffice\share\wordbook\en-GB" "$INSTDIR\App\openoffice\share\wordbookkeep\en-GB"
		Rename "$INSTDIR\App\openoffice\share\wordbook\en-US" "$INSTDIR\App\openoffice\share\wordbookkeep\en-US"
		RMDir /r "$INSTDIR\App\openoffice\share\wordbook"
		Rename "$INSTDIR\App\openoffice\share\wordbookkeep" "$INSTDIR\App\openoffice\share\wordbook"

		;Remove the readme files
		Rename "$INSTDIR\App\openoffice\readmes\readme_$1.txt" "$INSTDIR\App\openoffice\readmes\keep_$1.txt"
		Rename "$INSTDIR\App\openoffice\readmes\readme_$1-XV.txt" "$INSTDIR\App\openoffice\readmes\keep_$1-XV.txt"
		Rename "$INSTDIR\App\openoffice\readmes\readme_en-US.txt" "$INSTDIR\App\openoffice\readmes\keep_en-US.txt"
		Rename "$INSTDIR\App\openoffice\readmes\readme_en-GB.txt" "$INSTDIR\App\openoffice\readmes\keep_en-GB.txt"
		Delete "$INSTDIR\App\openoffice\readmes\readme_*.txt"
		Rename "$INSTDIR\App\openoffice\readmes\keep_en-US.txt" "$INSTDIR\App\openoffice\readmes\readme_en-US.txt"
		Rename "$INSTDIR\App\openoffice\readmes\keep_en-GB.txt" "$INSTDIR\App\openoffice\readmes\readme_en-GB.txt"
		Rename "$INSTDIR\App\openoffice\readmes\keep_$1.txt" "$INSTDIR\App\openoffice\readmes\readme_$1.txt"
		Rename "$INSTDIR\App\openoffice\readmes\keep_$1-XV.txt" "$INSTDIR\App\openoffice\readmes\readme_$1-XV.txt"
		
		${If} $InstallerCustomCodeUpgradeFrom == ""
			StrCpy $InstallerCustomCodeUpgradeFrom "0.0.0.0"
		${EndIf}
	${EndIf}
!macroend