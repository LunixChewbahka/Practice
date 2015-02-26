use strict;
use warnings;

print "What days do you go to work?\n";
my $workdays = readline STDIN;
chomp $workdays;

# my @array_that_you_want_to_use = split($delimiter, $scalarvariable);
my $delimiter = ", ";
my @days = split($delimiter, $workdays);

my $count = 0;
foreach my $slot (@days) {
		print "The user goes to work on $slot\n";
}

