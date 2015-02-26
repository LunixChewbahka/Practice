#This is a comment
#This program greets the world!

use strict;
use warnings;

print "Hello World!\n";

print "What is your name?\n";
my $num = readline STDIN;
chomp $num;

if ($num<10) {
		print "It's less than 10\n";
} elsif ($num>10) {
		print "It's greater than 10\n";
} else {
		print "It's 10\n";
}
