# Learn How to Program Perl - Lesson 4
# (Arrays)

# Methods of Declaring / Working with Arrays (Scalars vs. List)
# Method1
my @familymembers = ("Mom", "Dad", "Brother", "Sister");
# Method2
my @familymemers2;
$familymemers2[0] = "Mom";
$familymemers2[1] = "Dad";
$familymemers2[2] = "Brother";
$familymemers2[3] = "Sister";

# The Push Function
my @fruits;

my $loopnum = 0;
while ( $loopnum < 10) {
		print "Enter a fruit: ";
		my $fruit = readline STDIN;
		chomp $fruit;
}
push(@fruits, $fruit);

# Starts from element[0] = first element
# Element 0 is "my" or $a[0] = "my"
# And so on.....
# $a[$#a] = "Rob";
my @a = ("my", "name", "is", "Rob");

# note: $#a is the index of the last position in the array
my @a2 = (1,2,3,4);
print "$#a\n";
