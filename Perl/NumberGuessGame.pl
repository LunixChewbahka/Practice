use strict;
use warnings;

my $num = rand(50);
$num = int($num + 1);

my @guesses;
my $guessnum = 0;
my $guess = 0;

while ( $guess ne $num ) {
		print "What is your guess?\n";
		$guess = readline STDIN;
		chomp $guess;
		if ( $guess < $num) {
				print "Higher!\n";
		} elsif ( $guess > $num ) {
				print "Lower!\n";
		}
		
		push (@guesses, $guess);
		$guessnum++;
} # end of loop
print "Good Job!\n";
print "You guessed $guessnum times. You guesses were:\n";

foreach my $slot (@guesses) {
		printf "$slot\n";
}

