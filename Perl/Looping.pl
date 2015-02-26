# Learn How to Program Perl Lesson 3
# (Looping)

use strict;
use warnings;

# The While Loop
my $count = 1;
while ($count < 11) {
		print "$count\n";
		$count++;
}

# Programming "99 Bottles of Beer on the Wall"
# Programming Goal: Use a while loop to print song
=comment Whatever
The song structure goes like this:

"99 bottles of beer on the wal, 99 bottles of beer,
take one down, pass it around, 98 bottles of beer on the wall."

It then continues on counting down through two.  When it gets down to one, the song goes:

"1 bottle of beer on the wall, 1 bottle of beer, 
take one down, pass ot around, no more bottles of beer on the wall.
No more bottles of beer on the wall, nore more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."

We need is a while loop, a variable and a fre print statements.
=cut

my $beer = 99;

while ( $beer > 1 ) {
		print "$beer bottles of beer on the wall, $beer bottles of beer";
		$beer = $beer - 1;
		print "Take one down, pass it around, $beer bottles of beer on the wall.";
}
print "$beer bottles of beer on the wall, $beer bottles of beer.";
print "take one down, pass it around, no more bottles of beer on the wall!";
print "No more bottles of beer on the wall, no more bottles of beer.";
print "Go to the store and buy some more, 99 bottles of beer on the wall.";
