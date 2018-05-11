
======================================================================
File leggimi di OpenOffice 4.1.5
======================================================================


Per gli ultimi aggiornamenti a questo file leggimi, consultate http://www.openoffice.org/welcome/readme.html

questo file contiene informazioni importanti sul programma: si raccomanda pertanto di leggerne attentamente il contenuto prima di utilizzare il software.

La comunità di Apache OpenOffice, responsabile della realizzazione di questo prodotto, vi invita a partecipare al progetto di sviluppo. I nuovi utenti possono trovare informazioni utili sul sito di OpenOffice all'indirizzo http://openoffice.apache.org

Per saperne di più su come partecipare al progetto Apache OpenOffice, consultate le successive sezioni di questo documento.

OpenOffice è veramente gratuito per tutti gli utenti? 
----------------------------------------------------------------------

OpenOffice è gratuito per tutti. Potete prelevare questa copia di OpenOffice e installarla su quanti computer volete, e utilizzarla per i vostri scopi (compresi utenti commerciali, governativi, pubbliche amministrazioni e scuole). Per ulteriori dettagli consultate il testo della licenza associata a OpenOffice o la pagina web http://www.openoffice.org/license.html

Perché OpenOffice è gratuito per tutti?
----------------------------------------------------------------------

Potete utilizzare questa copia di OpenOffice senza pagare niente perché singoli individui e aziende sponsorizzanti hanno gratuitamente progettato, sviluppato, testato, tradotto, documentato, supportato, e aiutato in molti altri modi a costruire OpenOffice, la migliore suite da ufficio open source del mondo.

Se apprezzate i loro sforzi e volete assicurarvi che Apache OpenOffice continui ad esistere in futuro, considerate la possibilità di contribuire al progetto - consultate http://openoffice.apache.org/get-involved.html per dettagli su contributi di tempo e http://www.apache.org/foundation/contributing.html per dettagli su donazioni in denaro. Tutti possono dare il loro contributo.

----------------------------------------------------------------------
Avvertenze per l'installazione
----------------------------------------------------------------------

OpenOffice richiede una versione recente di JAVA per una funzionalità completa; JAVA può essere scaricato da http://java.com.

Requisiti di sistema
----------------------------------------------------------------------

* Microsoft Windows XP, Vista, Windows 7 o Windows 8
* Processore Pentium III o successivi
* 256 MB RAM (512 MB RAM raccomandati)
* Fino a 1,5 GB di spazio disponibile sul disco fisso
* risoluzione 1024x768 (raccomandata risoluzione più elevata), almeno 256 colori

Per l'installazione è necessario avere diritti di amministratore.

L'impostazione di OpenOffice come applicazione predefinita per i formati di documento Microsoft Office può essere forzata o esclusa utilizzando i seguenti parametri di comando per l'installazione:

* /msoreg=1 forzerà la registrazione di OpenOffice come applicazione predefinita per i formati Microsoft Office.
* /msoreg=0 disabiliterà la registrazione di OpenOffice come applicazione predefinita per i formati Microsoft Office.

Se eseguite un'installazione come amministratori utilizzando il comando setup /a, dovete accertarvi che il file msvc100.dll sia installato nel sistema. Perché OpenOffice si avvii a seguito dell'installazione, questo file è necessario. Potete recuperarlo da http://www.microsoft.com/en-us/download/details.aspx?id=5555

Per l'installazione è necessario avere diritti di amministratore.

Assicuratevi che ci sia spazio libero sufficiente nella cartella temporanea del vostro sistema e di avere diritti di lettura, scrittura ed esecuzione. Prima di avviare l'installazione chiudete tutti gli altri programmi.

----------------------------------------------------------------------
Problemi all'avvio del programma
----------------------------------------------------------------------

Eventuali difficoltà all'avvio di OpenOffice (come il blocco delle applicazioni) e problemi di visualizzazione sono spesso causati dal driver della scheda grafica. In questi casi, conviene aggiornare il driver in questione o provare a usare il driver grafico fornito con il sistema operativo. Le difficoltà di visualizzazione degli oggetti 3D possono spesso essere risolte disattivando l'opzione "Usa OpenGL" sotto 'Strumenti - Opzioni - OpenOffice - Vista - Vista 3D'.

----------------------------------------------------------------------
Touchpad ALPS/Synaptics in MS Windows
----------------------------------------------------------------------

A causa di un problema con i driver di MS Windows, non è possibile utilizzare la funzione di scorrimento del touchpad ALPS/Synaptics nei documenti di OpenOffice.

Per abilitare lo scorrimento, aggiungete le seguenti righe al file di configurazione "C:\Programmi\Synaptics\SynTP\SynTPEnh.ini" e riavviate il computer:

[OpenOffice]

FC = "SALFRAME"

SF = 0x10000000

SF |= 0x00004000

La posizione del file di configurazione può variare sui diversi sistemi Windows.

----------------------------------------------------------------------
Tasti di scelta rapida
----------------------------------------------------------------------

In OpenOffice si possono utilizzare i tasti di scelta rapida che non siano già utilizzati dal sistema operativo. Nel caso in cui una combinazione di tasti non funzioni come descritto nella guida in linea, verificate che la stessa non sia assegnata a qualche comando dal sistema. È possibile risolvere questi conflitti modificando i tasti di scelta rapida del sistema; in alternativa potete cambiare quasi ogni combinazione assegnata da OpenOffice. Per maggiori informazioni su questo argomento, fate riferimento alla documentazione in linea di OpenOffice o alla documentazione del vostro sistema operativo.

----------------------------------------------------------------------
Problemi durante la spedizione di documenti come e-mail da OpenOffice
----------------------------------------------------------------------

Si possono verificare dei problemi (il programma va in crash o si blocca) inviando un documento da 'File - Invia - Documento come e-mail' o 'Documento come allegato PDF'. La causa è rintracciabile nel file di sistema di MS Windows "Mapi" (Messaging Application Programming Interface) che in alcune versioni non funziona correttamente; purtroppo è impossibile identificare con precisione quali siano queste versioni. Per maggiori informazioni cercate "mapi dll" nella Microsoft Knowledge Base all'indirizzo http://www.microsoft.com

----------------------------------------------------------------------
Avvertenze importanti per l'accessibilità
----------------------------------------------------------------------

Per maggiori informazioni sulle caratteristiche di accessibilità in OpenOffice, consultate http://www.openoffice.org/access/

----------------------------------------------------------------------
Supporto utenti
----------------------------------------------------------------------

La pagina principale di assistenza http://support.openoffice.org/ offre diverse possibilità di aiuto per OpenOffice. Per la vostra domanda potrebbe esistere già una risposta: verificate il forum della comunità all'indirizzo http://forum.openoffice.org o ricercate negli archivi della mailing list 'users@openoffice.org' in http://www.openoffice.org/mail_list.html. In alternativa, potete inviare le vostre domande all'indirizzo di posta elettronica users@openoffice.apache.org. La spiegazione su come iscriversi alla lista (ossia ottenere una risposta tramite posta elettronica) si trova in questa pagina: http://openoffice.apache.org/mailing-lists.html.

Controllate anche la sezione FAQ all'indirizzo http://wiki.openoffice.org/wiki/Documentation/FAQ.

----------------------------------------------------------------------
Segnalazione di bug e problemi
----------------------------------------------------------------------

Il sito web di OpenOffice ospita BugZilla, il sistema che utilizziamo per la segnalazione, il controllo e la risoluzione di bug e problemi. Tutti gli utenti sono invitati a segnalare problemi o comportamenti particolari del programma sulla propria piattaforma. Queste segnalazioni sono tra i contributi più importanti che si possano offrire alla comunità per favorire il continuo sviluppo e il miglioramento della suite.

----------------------------------------------------------------------
Come collaborare
----------------------------------------------------------------------

La comunità di OpenOffice ha bisogno della vostra partecipazione attiva per lo sviluppo di questo importante progetto open source.

In quanto utenti, siete già un elemento fondamentale nello sviluppo della suite, potete però assumere un ruolo ancora più attivo collaborando con la comunità. Potete contattarci e unirvi a noi alla pagina: http://openoffice.apache.org/get-involved.html

Come iniziare
----------------------------------------------------------------------

Il miglior modo per iniziare a contribuire è quello di iscriversi a una o più mailing list, seguire le discussioni per il primo periodo e utilizzare gli archivi della lista per familiarizzare con i diversi argomenti trattati fin dal primo rilascio del codice sorgente di OpenOffice avvenuto nell'ottobre del 2000. Una volta acquisita confidenza tutto quello che serve è inviare un messaggio di presentazione e aggregarsi al gruppo.

Iscrivetevi
----------------------------------------------------------------------

Qui potete trovare alcune delle mailing list di OpenOffice a cui è possibile iscriversi: http://openoffice.apache.org/mailing-lists.html

* Annunci: announce@openoffice.apache.org *consigliata a tutti* (poco traffico)
* Lista principale per gli utenti: users@openoffice.apache.org *un modo semplice per sapere di cosa si parla* (traffico intenso)
* Sviluppo generale del progetto e lista di discussione: dev@openoffice.apache.org (traffico intenso)

Aderire al Progetto
----------------------------------------------------------------------

Anche se non avete grande esperienza di progettazione o programmazione di software, potete dare un importante contributo a questo importante progetto open source. Come?

Alla pagina http://openoffice.apache.org/get-involved.html troverete diversi progetti, dalla localizzazione al controllo di qualità e sviluppo di codice. Se non siete degli sviluppatori, potete collaborare alla redazione di documentazione o al progetto marketing. Il progetto marketing di OpenOffice utilizza ogni tecnica commerciale per diffondere il software open source, cercando di superare le barriere linguistiche e culturali. Parlando ai vostri amici della suite e facendola conoscere a quante più persone possibile avrete già fornito un importante contributo.

Potete dare una mano unendovi alla mailing list del marketing marketing@openoffice.apache.org dov'è possibile contribuire con estremi di contatto con la stampa, i media, le agenzie governative, i consulenti, le scuole, i Gruppi Utenti Linux e gli sviluppatori del vostro paese o della vostra comunità locale.

Vi auguriamo buon lavoro e buon divertimento con il nuovo OpenOffice 4.1.5 e speriamo di incontrarvi presto online.

La Comunità di Apache OpenOffice