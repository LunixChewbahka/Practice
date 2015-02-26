use strict;
use warnings;

# Hashes
# Preceded by a % sign, enclosed in ()
# Key value pairs of data
#		$h{"first name"} = "Rob";
#		$h{"last name"} = "Edwards";
#		$h{"job"} = "Associate Professor";
#		
#		%h = ("one" => 1, "two" => 2);
#		print $h{"one"} + $h{"two"}."\n";

%h = ("one"=>2, "two"=>3);
$c = $h{"one"} + $h{"two"};
print "$c\n";
