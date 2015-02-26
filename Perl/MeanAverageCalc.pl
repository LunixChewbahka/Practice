# Programming a Mean / Average Calculator

use strict;
use warnings;

print "What is your data?\n";
my $data = readline STDIN;
chomp ($data);

my $delimiter = ", ";
my @results = split( $delimiter, $data );

my $total = 0;

foreach my $slot (@results) {
		$total = $total + $slot;
}

my $datanum = $#results + 1;
my $avg = $total / $datanum;
print "$avg\n";
