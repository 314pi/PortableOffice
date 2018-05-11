#!/c/gcdev/gnucash-2.6.19/mingw/msys/1.0/bin/perl

# Simply run this script with no arguments. It will first download the
# information HTML page by bundesbank and parse this page for blz
# updates. Then, the user will be asked whether one particular
# available file should be downloaded. If the user agrees, the file is
# downloaded, copied into BANKDATA_PATH, and converted into
# ktoblzcheck's format.

## Configuration
# Commands
$WGET = "/c/gcdev/gnucash-2.6.19/mingw/msys/1.0/bin/wget";
$LYNX = "NO";
#$SED = "/c/gcdev/gnucash-2.6.19/mingw/msys/1.0/bin/sed";
$GREP = "/c/gcdev/gnucash-2.6.19/mingw/msys/1.0/bin/grep";
$RECODE = "NO"; #"NO"; -- dont use recode, it is not widely available
# Directories
$prefix="/c/gcdev/gnucash-2.6.19/gwenhywfar";
$datadir="${prefix}/share";
$pkgdatadir="$datadir/ktoblzcheck";
$BANKDATADIR="${pkgdatadir}";

## Sanity checks
die "Neither wget nor lynx is available on your system, or was available on the system where the installed rpm was built. This tool requires wget or lynx. If you have it i
nstalled, then edit the script and set the variable WGET or LYNX to the full path to wget or lynx. Aborting for now."
  if $WGET eq "NO" and $LYNX eq "NO";
#die "sed or grep is not available on your system. This tool requires it. Aborting."
#  if $SED eq "NO" || $GREP eq "NO";
die "The directory for the bankdata \"$BANKDATADIR\" does not exist. Aborting."
  if ! -d $BANKDATADIR;
die "The directory for the bankdata \"$BANKDATADIR\" is not writable. You need to run this script as the user who owns that directory. This probably means you must run this script as root! However this script will not write anything anywhere until it tells you so and you confirm it."
  if ! -w $BANKDATADIR;
#print "The recode program is not available. This is okay as long as your system default encoding is latin1/ISO-8859-1 or similar. However if your system default encoding is UTF-8 then the conversion of the downloaded file will fail. In that case please cancel now, edit this script and set the variable RECODE to the full path to recode.\n"
#  if $RECODE eq "NO";

## Common constants
$debug=0; # set this to nonzero for activating debugging mode
$BASE_URL="http://www.bundesbank.de";
$MAIN_URL="$BASE_URL";
$MAIN_DOC="$MAIN_URL/Redaktion/DE/Standardartikel/Kerngeschaeftsfelder/Unbarer_Zahlungsverkehr/bankleitzahlen_download.html";

if ($debug == 0) {
  if ($WGET ne "NO") {
    $DOWNLOADCMD = "$WGET -O - $MAIN_DOC";
  } else {
    $DOWNLOADCMD = "$LYNX -source $MAIN_DOC";
  }
} else {
  print "DEBUG MODE! Will only echo commands, not execute them.\n";
  $DOWNLOADCMD = "cat ~/privat/hbci/blabla.html";
}
# Old regexp before 2006-06-04
#$datafile_regexp = 'blz\d{4,8}?pc\.txt';
# Regexp from 2006-06-05 onwards
#$datafile_regexp = 'blz_\d{8}\.txt';
# New regexp from 2012-05-30 onwards
$datafile_regexp = 'blz_\d{4}_\d{2}_\d{2}_txt\.txt';

## Find the available potential download files
@potential_files = ();
@potential_urls = ();
open(INPUT, "$DOWNLOADCMD |") || die "can't open $DOWNLOADCMD: $!";;
while (<INPUT>) {
  my ($addr) = m|($datafile_regexp)|giosx;
  if ($addr) {
    push @potential_files, $addr;
    push @potential_urls, $_;
  };
};
close INPUT;
#print join("\n",@potential_files);print "\n";

## Find the already installed files
opendir(DIR, $BANKDATADIR) || die "can't opendir $BANKDATADIR: $!";
@datafiles = grep( /$datafile_regexp/ && -f "$BANKDATADIR/$_", readdir(DIR));
closedir DIR;
#print join("\n",@datafiles);print "\n";

## Calculate the difference between both lists
@diff = ();
%union = ();
foreach $e (@datafiles) { $union{$e} = 1 }
foreach $e (@potential_files) {
    if ( !$union{$e} ) { 
      push @diff, $e; 
    }
}
#print join("\n",@diff);print "\n";
#@diff = @potential_files;

## Select the correct file to download
if (scalar @diff == 0) {
  print "Sorry, no new bankdata file found. Probably none available. Exiting.\n";
  exit 0;
} elsif (scalar @diff == 1) {
  $file = $diff[0];
} else {
  print "The following bankdata files are available for download: \n";
  $k = 0;
  foreach $e (@diff) { print " [".$k++."] ".$e."\n"; };
  print "Which one should be chosen? (Hint: The file names contain \n".
    "the four-digit year, the month and the date as YYYY_MM_DD. You should \n".
      "probably choose the file that corresponds to a date that \n".
	"lies in the future.) \n".
	  "Please type the corresponding number and press Enter.\n";
  $key = <STDIN>;
  #print "Got $key which gives ".$diff[$key];
  $file = $diff[$key];
};

## Pick the URL for downloading the file
($correct_url_line) = grep (m|$file|, @potential_urls);
($correct_url) = ($correct_url_line =~ m|([^"]*$file[^"]*)|gio);

# The installation name is now taken from the original filename;
# "blz_20110102" will be installed after conversion as
# "bankdata_20110102".
$INSTALLED_NAME = $file;
$INSTALLED_NAME =~ s/blz_(\d{4})_(\d{2})_(\d{2})_txt\.txt/bankdata_\1\2\3.txt/gio;

$download = "$MAIN_URL/$correct_url";
$install_1 = "$BANKDATADIR/$file";
$install_2 = "$BANKDATADIR/$INSTALLED_NAME";
$conv_script = "$pkgdatadir/bundesbank.pl";
print "Summary: Will download \n".
  "  $download \n".
  "to \n".
  "  $install_1 \n".
  "and convert it into ktoblzcheck's format at \n".
  "  $install_2 \n".
  "Is this ok? Please press <Enter> if yes, or <Control-C> to abort:\n";
$key = <STDIN>;

if ($debug == 0) {
  $ECHO = "";
  $gt = ">";
  $lt = "<";
} else {
  $ECHO = "echo";
  $gt = "gt";
  $lt = "lt";
}

## Now the real work:
##
## 1. Download
if ($WGET ne "NO") {
  print "$ECHO $WGET -O $install_1 $download\n";
  system("$ECHO $WGET -O $install_1 $download");
} else {
  print "$ECHO $LYNX -source $download $gt $install_1\n";
  system("$ECHO $LYNX -source $download $gt $install_1");# || die "can't call system: $!";
}

## 2. Check whether the Bundesbank's BLZ is in there
print "$GREP -q 10000000 $install_1\n";
if (system("$GREP -q 10000000 $install_1") != 0) {
  die "Downloaded file $install_1 is not in valid BLZ format. Aborting.";
}

### 3. Backup copy of old bankdata file
#print "$ECHO cp $install_2 $install_2~\n";
#system("$ECHO cp $install_2 $install_2~");# || die "can't call system: $!";
# - no backup needed anymore because all files have different dates in the name

## 4. Recode the downloaded file from its latin1 encoding into the
## locale encoding
if ($RECODE ne "NO") {
  print "$ECHO $RECODE latin1.. $install_1\n";
  system("$ECHO $RECODE latin1.. $install_1\n");
};

## 5. Convert new file into the place of the old one.
print "$ECHO $conv_script $lt $install_1 $gt $install_2\n";
system("$ECHO $conv_script $lt $install_1 $gt $install_2");# || die "can't call system: $!";

## 6. Recode the locally encoded file into this library's
## encoding (latin1 for now)
if ($RECODE ne "NO") {
  print "$ECHO $RECODE ..latin1 $install_2\n";
  system("$ECHO $RECODE ..latin1 $install_2\n");
};

print "Finished.\n";
