#!/c/gcdev/gnucash-2.6.19/mingw/msys/1.0/bin/perl -w
#
# $Id$
#
# This script converts the ascii file of German Bank Codes (BLZ-Datei)
# as available from the Deutsche Bundesbank into the bankdata.txt file
# for the ktoblzcheck library.
# The BLZ-File is available in two different formats, an old format
# with lines of 188 characters and starting with 5. June 2006
# a new format with lines of 168 characters.
# The format is automatically detected by this script.
#
# This script is a replacement for bundesbank.sed.
#
#   Usage: ./bundesbank.pl < blz_YYYYMMDD.txt > bankdata_YYYYMMDD.txt
#
# Written by Alexander Kurz based on the
# original sed version By Daniel Gloeckner <daniel-gl@gmx.net>
#
use strict;
my $format=0;
while (<>) {
    # Remove trailing CR/LF
    s/[\r\n]+$//;
    # Check the BLZ-file format by the length of the first line.
    if ($format==0) {
	if ( /^.{188}$/ ) { $format=188; }
	elsif ( /^.{168}$/ ) { $format=168; }
	else { die "unknown blz file format\n"; }
    }
    # Only use lines that have a "1" as 9th character (Hauptniederlassungen)
    if (/^.{8}1/) {
	if ($format==188) { 
	    # Ignore lines starting with 8 zeros (deleted banks in 188 format notation)
	    goto Weg if $format==188 && /^0{8}/;
	    # Divide lines into the different text fields. Print only the required ones
	    unless (s/^(.{8}).{19}(.{58}).{25}(.{29})(.{27}).{5}[01].{9}(.{2}).{5}$/$1\t$5\t$2\t$3/) {
		die "blz file is corrupted\n";
	    }
	} elsif ($format==168) { 
	    # Ignore deleted banks by the new format 168
	    goto Weg if $format==168 && /^.{158}D/;
	    # Divide lines into the different text fields. Print only the required ones
	    unless (s/^(.{8}).{1}(.{58}).{5}(.{35})(.{27}).{16}(.{2}).{6}[AUM].{9}$/$1\t$5\t$2\t$3/) {
		die "blz file is corrupted\n";
	    }
	}
	# Remove trailing whitespaces in columns
	s/ +\t/\t/g;
	# Remove trailing whitespaces in last column
	s/ *$/\n/;
	# Print the result
	print;
      Weg:
    }
}
