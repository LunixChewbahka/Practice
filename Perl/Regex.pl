# Learn How to Program Perl Lesson 6:
# (Regex) - Holy Shit!
# Regex = stands for Regular Expression
# For example, let's say we have the sentence:
# "The cat and the dog got along fine."
# This sentence is not equal to simply "dog", but it does contain the word "dog". So, regex would be better to use rather than a simple equality check ( such as "eq").

# Here is the format for Substitution in Perl:
#		$scalar variable =~ s/search for this/replace with this extra settings

use strict;
use warnings;

my $string = "I want to go to Disneyland next week.";
print "Before, the sentence reads: $string\n";
$string =~ s/Disneyland/Six Flags/;
print "After, the sentence reads: $string\n";

print "Amazing! :) \n";

# -------------------------------------------------------------
# Working with Text Files
# Opening a file specifies the file handle. It's done in this format:
#		open(File Handle herem "filename.extension");
open (SAMPLE, "regexfilesample.txt");
print SAMPLE "Hello Test regexfilesample text input\n";

# Another way to do it is to load the file into an array(each line will be an array slot):
my @array = <SAMPLE>;
print "@array\n";
close(SAMPLE);

open(WRITING, ">regexfilesample.txt");
print WRITING "Hello File! :D\n";
print WRITING "I hope I could loop this in a file\n";
close(WRITING);

# -----------------------------------------------------------------
# Programming a Find and Replace Utility
my $filenamme;
my $search;
my $replace;

my $cont = "n";

while ( $cont eq "n" ) {
		print "What file do you wan to use?\n";
		$filenamme = readline STDIN;
		chomp ($filenamme);

		print "what string do you want to search for?\n";
		$search = readline STDIN;
		chomp ($search);

		print "What string do you want to erplace it with?\n";
		$replace = readline STDIN;
		chomp ($replace);

		print "You are working with the file $filenamme and wish to replace $search with $replace. Is this correct? Don't worry -- you can write out to a different file if you decide to!\n";
		print "Please enter yes or no (y/n)\n";
		chomp ($cont);		
} # End Loop

open (READ, $filenamme);
my @lines = <READ>;
close (READ);

foreach my $slot (@lines) {
		$slot =~ s/$search/$replace/g;
}

print "What file do you want to output to?\n";
my $outputfile = readline STDIN;
chomp ($outputfile);

$outputfile = ">$outputfile";

open (OUT, $outputfile);
print OUT @lines;
close (OUT);
