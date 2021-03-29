#!/usr/bin/ruby -w

# simplest program

puts "Hello, Ruby!";

# Here Document in Ruby referes to build strings from multiple lines.

print <<EOF
	This is the first way of creating
	here document ie. multiple line string.
EOF

print <<"EOF";
	This is the first way of creating
	here document ie.multiple string.
EOF

print <<`EOC`
	echo hi there
	echo lo there
EOC

print <<"foo", <<"bar"
	I said foo.
foo
	I said bar.
bar

# BEGIN declares code to be called before the program run.

puts "This is main Ruby Program"

BEGIN {
	puts "Initialising Ruby Program" # this will run first

}

# END declares code to be called at the end of the program.

puts "This is main Ruby Program"
END {
	puts "Terminating Ruby Program"
}

# Mulitline comment

=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end
	