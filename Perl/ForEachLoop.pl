# Learn How to Program Perl - Lesson 5
# (Arrays Part 2; More Looping)
#
# The Foreach Loop

use strict;
use warnings;

# Example number 1
my @array = ( 1, 2, 3, 4, 5 );
my $x = 0;

# This is the while version
while ( $x <= 4 ) {
		print $array[$x] * 10,"\n";
		$x++;
}

# This is the foreach version
foreach my $slot (@array) {
		print $slot * 10,"\n";
}


# Example number 2
my @word = ( "hello", "there", "here", "are", "some", "words" );

foreach my $space (@word) {
		print "The word is $space\n";
}
