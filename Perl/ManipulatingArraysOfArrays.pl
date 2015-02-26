# Declaration and Access of Arrays of Arrays

# use strict;
# use warnings;

# assign to our array, an array of array references
my @AoA = (
				[ "fred", "barney", "pebbles", "bambam", "dino", ],
				[ "george", "jane", "elroy", "judy", ],
				[ "homer", "bart", "marge", "maggie", ],
);
print "$AoA[0][1]\n";

=comment a_long_comment
Now you should be veru careful that the outer bracket type is a round one, that is, a parenthesis. That's because you're assigning to an @array, so you need parenthesis. If you wanted there not to be an @AoA, but rather just a reference to it, you could do something more like this:

@array = () or parenthesis - an actual array
@ref_to_array = [] or square brackets - just reference

=cut

# assign a reference to array of array references
my $ref_to_AoA = [
				[ "fred", "barney", "pebbles", "bambam", "dino", ],
				[ "george", "jane", "elroy", "judy", ],
				[ "homer", "bart", "marge", "maggie", ],
];
print "$ref_to_AoA->[2][1]\n";
# additional outputs:
print "$AoA[2][2]\n";
print "$ref_to_AoA->[2]->[2]\n";
# instead of writing these:
print "$AoA[2]->[2]\n";
print "$ref_to_AoA->[2]->[2]\n";


sub show(+) {
		require Dumpvalue;
		state $prettily = new Dumpvalue::
				tick				=> q("),
				compactDump => 1,				# comment these two lines out
				veryCompact => 1,
				;
		Dumpvalue $prettily @_;
}

# Assign a list of array references to an array
my @JAR = (
		[ "fred", "barney" ],
		[ "george", "jane", "elroy" ],
		[ "homer", "marge", "bart" ],	 
);
push $JAR[0], "wilma", "betty";
print "@JAR";
