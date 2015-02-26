# Learn How to Program Perl - Lesson 5
# (Arrays Part 2; More Looping)
#
# The Foreach Loop

use strict;
use warnings;

my @word = ( "hello", "there", "here", "are", "some", "words" );

foreach my $space (@word) {
		print "The word is $space\n";
}

