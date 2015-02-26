# Learn how to Program Perl - Lesson 2
# (Blocks, Variable Scope, and Subroutines)
# Programming a Simple Calculator

use strict;					# Perl pragma to restrict unsafe constructs
use warnings;				# Perl pragma tocontrol optional warnings

=comment multiline_comment
{
		#Here's a block
		{
				#Here's a block in a block (incoming blockception)
		}
}

{
		#Here's another distinct block
}
=cut

my $food = "pizza"; 
{ #let's pretend there's a good reason to put
		print "$food\n";
		my $animal = "dog\n";
		
		printf "$animal\n";
		{
				print "$animal\n";
		}
}
# won't work
# print "$animal\n";
