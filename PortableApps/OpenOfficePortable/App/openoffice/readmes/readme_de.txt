
======================================================================
OpenOffice 4.1.5 Lies Mich
======================================================================


Letzte Änderungen an dieser ReadMe-Datei finden Sie unter http://www.openoffice.org/welcome/readme.html

Diese Datei enthält wichtige Hinweise über dieses Programm. Bitte lesen Sie die Informationen sorgfältig, bevor Sie mit der Installation beginnen.

Die Apache OpenOffice Gemeinschaft, die für die Entwicklung dieses Programms verantwortlich ist, lädt Sie ein, als Mitglied an diesem Prozess teilzunehmen. Als neuer Anwender finden Sie hilfreiche Informationen auf den Webseiten von OpenOffice unter http://openoffice.apache.org

Lesen Sie bitte auch die Hinweise weiter unten, wie Sie sich am Apache OpenOffice Projekt beteiligen können.

Darf OpenOffice tatsächlich von jedem frei benutzt werden? 
----------------------------------------------------------------------

OpenOffice darf von jedem frei benutzt werden. Sie können diese Kopie von OpenOffice auf beliebig vielen Rechnern installieren und für jeden beliebigen Zweck (einschließlich kommerzielle Nutzung, Nutzung in Ämtern, öffentlicher Verwaltung oder in der Bildung) verwenden. Weitere Einzelheiten finden Sie im mit OpenOffice gelieferten Lizenztext oder unter http://www.openoffice.org/license.html

Warum ist OpenOffice für jeden Anwender frei?
----------------------------------------------------------------------

Sie können diese Kopie von OpenOffice lizenzkostenfrei nutzen, da freie Helfer und Unternehmen dieses Produkt entworfen, entwickelt, getestet, übersetzt, dokumentiert, unterstützt, vermarktet und auf viele andere Weisen dabei geholfen haben, OpenOffice zu dem zu machen, was es heute ist - die weltweit führende Open Source Office-Software.

Wenn Sie die Leistungen anerkennen und sicherstellen wollen, dass Apache OpenOffice fortbesteht, denken sie darüber nach zum Projekt beizutragen - siehe auch http://openoffice.apache.org/get-involved.html (wie Sie mit Zeit beitragen können) und http://www.apache.org/foundation/contributing.html (wie Sie das Projekt finanziell unterstützen können). Jede/r kann zum Projekt beitragen.

----------------------------------------------------------------------
Hinweise zur Installation
----------------------------------------------------------------------

OpenOffice benötigt eine aktulle Java-Version für die volle Funktionalität; JAVA kann von http://java.com heruntergeladen werden.

Systemvoraussetzungen
----------------------------------------------------------------------

* Microsoft Windows XP, Vista, Windows 7 oder Windows 8
* Pentium III oder neuerer Prozessor
* 256 MB RAM (512 MB RAM empfohlen)
* Bis zu 1,5 GB verfügbarer Festplattenplatz
* Auflösung von 1024x768 (höhere Auflösung empfohlen) und mindestens 256 Farben

Bitte beachten Sie, dass Administratorrechte für die Installation benötigt werden.

Um die Registrierung von OpenOffice als Standard-Anwendung für Microsoft Office Dateiformate zu erzwingen oder zu unterdrücken, verwenden Sie die folgenden Parameter beim Aufruf des Installers:

* /msoreg=1 erzwingt die Registrierung von OpenOffice als Standard-Anwendung für Microsoft Office Dateiformate.
* /msoreg=0 verhindert die Registrierung von OpenOffice als Standard-Anwendung für Microsoft Office Dateiformate.

Wenn Sie eine administrative Installation per setup /a durchführen, müssen Sie sicherstellen, dass die Datei msvcr100.dll auf dem System installiert ist. Diese Datei wird benötigt, um OpenOffice nach einer administrativen Installation starten zu können. Sie können diese Datei von http://www.microsoft.com/en-us/download/details.aspx?id=5555 herunterladen

Bitte beachten Sie, dass Administratorrechte für die Installation benötigt werden.

Bitte stellen Sie sicher, dass genügend freier Speicherplatz im temporären Verzeichnis Ihres Systems vorhanden ist und dass Schreib-, Lese- und Ausführungsrechte gesetzt sind. Schließen Sie alle laufenden Programme, bevor Sie mit der Installation beginnen.

----------------------------------------------------------------------
Probleme beim Programmstart
----------------------------------------------------------------------

Probleme beim Start von OpenOffice (z. B. Hängenbleiben der Anwendung) sowie Probleme bei der Darstellung auf dem Bildschirm sind häufig auf den im System verwendeten Grafikkartentreiber zurückzuführen. Bitte aktualisieren Sie bei Problemen dieser Art den von Ihnen verwendeten Grafikkartentreiber bzw. benutzen Sie testweise den Standardgrafiktreiber Ihres Betriebssystems. Darstellungsprobleme bei 3D-Objekten lassen sich oft auch durch das Abschalten der Option "Open GL benutzen" unter 'Extras - Optionen - OpenOffice - Ansicht - 3D-Darstellung' beseitigen.

----------------------------------------------------------------------
ALPS/Synaptics Notebook-Touchpads unter Windows
----------------------------------------------------------------------

Aufgrund eines Problems im Windows-Treiber können Sie nicht in Ihren OpenOffice-Dokumenten scrollen, indem Sie mit dem Finger über den ALPS/Synaptics-Touchpad fahren.

Um das Scrollen per Touchpad zu ermöglichen, fügen Sie die folgenden Zeilen in die Datei "C:\Programme\Synaptics\SynTP\SynTPEnh.ini" ein und starten dann Ihren Computer neu:

[OpenOffice]

FC = "SALFRAME"

SF = 0x10000000

SF |= 0x00004000

Der Speicherort der Konfigurationsdatei kann je nach Windows-Version abweichen.

----------------------------------------------------------------------
Tastaturbefehle
----------------------------------------------------------------------

In OpenOffice können nur Tastaturbefehle (Tastenkombinationen) benutzt werden, die nicht vom Betriebssystem verwendet werden. Sollte in OpenOffice eine Tastenkombination nicht wie in der OpenOffice -Hilfe beschrieben funktionieren, muss überprüft werden, ob diese Kombination bereits vom Betriebssystem verwendet wird. Um diesen Konflikt aufzuheben, kann die Belegung des Betriebssystems umdefiniert bzw. aufgehoben werden. Alternativ dazu lässt sich aber auch in OpenOffice  fast jede Tastaturbelegung ändern. Weitere Hinweise zu diesem Thema bietet die OpenOffice-Hilfe sowie die Hilfe des Betriebssystems.

----------------------------------------------------------------------
Probleme beim Versenden von Dokumenten als E-Mail aus OpenOffice
----------------------------------------------------------------------

Wenn ein Dokument per 'Datei - Senden - Dokument als E-Mail' oder 'E-Mail als PDF' versandt wird, können Probleme auftreten (das Programm hängt oder stürzt ab). Das liegt an der Windows Systemdatei "Mapi" (Messaging Application Programming Interface), welche in einigen Dateiversionen Probleme verursacht. Leider können die Probleme nicht auf eine bestimmte Versionsnummer eingegrenzt werden. Für mehr Informationen besuchen Sie bitte http://www.microsoft.com und suchen in der Knowledge Base nach "mapi dll".

----------------------------------------------------------------------
Wichtige Hinweise zur Zugänglichkeit
----------------------------------------------------------------------

Für Informationen zu Zugänglichkeits-Funktionen in OpenOffice, lesen Sie bitte http://www.openoffice.org/access/

----------------------------------------------------------------------
Anwenderunterstützung
----------------------------------------------------------------------

Die Webseite für Unterstützung http://support.openoffice.org/ bietet verschiedene Wege, Hilfe zu OpenOffice zu erhalten. Ihre Frage könnte bereits beantwortet sein. Schauen Sie im Community-Forum http://forum.openoffice.org oder durchsuchen Sie die Archive der Mailingliste 'users-de@openoffice.apache.org' unter http://www.openoffice.org/de/about-ooo/about-mailinglist.html. Alternativ können Sie Ihre Fragen an users-de@openoffice.apache.orgsenden. Wie Sie sich auf der Mailingliste einschreiben können (um Antworten zu erhalten) ist auf dieser Seite beschrieben: http://www.openoffice.org/de/about-ooo/about-mailinglist.html.

Schauen Sie zusätzlich auch in den FAQ-Bereich unter http://wiki.services.openoffice.org/wiki/DE/FAQ.

----------------------------------------------------------------------
Fehlerberichte und sonstige Aufgaben
----------------------------------------------------------------------

Die OpenOffice-Website stellt BugZilla bereit, unser Verwaltungswerkzeug für die Berichterstattung, Verfolgung und Behebung von Fehlern und sonstiger Aufgaben. Wir rufen alle Anwender auf, ohne Scheu Wünsche und Probleme zu melden, die auf ihrer Plattform auftreten. Engagiertes Eintragen von Fehlern und Aufgaben ist einer der Grundpfeiler der Entwicklung und Verbesserung unseres Produkts, an dem sich alle Anwender beteiligen und somit die Entwicklung vorantreiben können.

----------------------------------------------------------------------
Sich beteiligen
----------------------------------------------------------------------

Für die OpenOffice-Community ist es von hohem Wert, wenn Sie sich aktiv in die Entwicklung dieses bedeutenden Open-Source-Projekts einbringen.

Als Anwender sind Sie bereits ein wertvoller Teil dieses Entwicklungsprozesses. Wir möchten Sie gern ermuntern, eine noch aktivere Rolle zu spielen und zu einem langfristigen Helfer in unserer Community zu werden. Bitte helfen Sie uns und schauen Sie die Projektseiteneiten an: http://www.openoffice.org/de

Wie anfangen?
----------------------------------------------------------------------

Der beste Weg, am Entwicklungsprozess teilzunehmen, ist eine oder mehrere der angebotenen Mailinglisten zu abonnieren und dort eine Weile mitzulesen oder in den Archiven zu blättern, um mit den Themen vertraut zu werden, die seit der Veröffentlichung des Quelltextes von OpenOffice im Oktober 2000 abgedeckt wurden. Fühlen Sie sich in der Lage mitzumachen, dann ist alles, was sie tun müssen, eine kleine Selbstvorstellung per Email zu senden und loszulegen.

Abonnieren
----------------------------------------------------------------------

Hier finden Sie eine Auswahl der OpenOffice Mailinglisten, die Sie abonnieren können http://www.openoffice.org/de/about-ooo/about-mailinglist.html oder auf englisch http://openoffice.apache.org/mailing-lists.html

* Neuigkeiten:  announce@openoffice.apache.org - Für alle Anwender empfohlen (niedriges Mailaufkommen - auf englisch)
* Zentrale Anwenderunterstützung: users-de@openoffice.apache.org - Empfohlen für alle neuen Anwender
* Allgemeine Liste für Projekt-Entwicklung und Diskussion: dev@openoffice.apache.org (hohes Mailaufkommen)

Teilnahme an einem oder mehreren Projekten
----------------------------------------------------------------------

Selbst mit geringen Erfahrungen in Programmierung und Softwaredesign können Sie wichtige Beiträge zu diesem bedeutenden OpenSource-Projekt leisten. Ja, genau Sie!

Unter http://openoffice.apache.org/get-involved.html finden Sie verschiedene Projekte, angefangen bei der Lokalisierung, über Portierung bis hin zu einigen wirklichen Kern-Entwicklungsprojekten. Wenn Sie kein Entwickler sind, versuchen Sie sich doch im Dokumentations- oder Marketing-Projekt. Das OpenOffice Marketing-Projekt bedient sich sowohl der Techniken des Guerillamarketings als auch der Mittel traditioneller Werbung, um OpenSource-Software über Sprach- und Kulturbarrieren hinweg bekannt zu machen. Schon dadurch, dass Sie in Ihrem Freundeskreis und kulturellen Umfeld von unserem Officepaket erzählen, helfen Sie uns weiter.

Helfen Sie mit, indem Sie sich dem Marketing-Kommunikations- und Informationsnetzwerk anschließen (marketing@openoffice.apache.org), wo Sie landesweit oder regional interessante Kontakte mit Presse, Medien, Regierungsbehörden, Beratern, Schulen, Linux User Gruppen und Entwicklern knüpfen und pflegen können.

Wir hoffen, dass Sie Spaß bei der Arbeit mit dem neuen OpenOffice 4.1.5  haben und sich uns online anschließen.

Die Apache OpenOffice Gemeinschaft