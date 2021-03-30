#!/usr/bin/ruby

# Exercise 1
=begin
	
Build a function that returns an array of integers from n to 1 where n>0.

Example : n=5 --> [5,4,3,2,1]
	
=end
print "Reverse Sequence"
print "\n"


def reverse_seq(n)
	arr = []
  loop do 
  	arr.push(n)
  	n -= 1
  	if n < 1
  		break
  	end
end
print arr
return arr
end

reverse_seq(5)

# Exercise 2
=begin
	
Write function RemoveExclamationMarks which removes 
all exclamation marks from a given string.
	
=end


print "\n\n"
print "Remove Exclamation Marks"
print "\n"

def remove_exclamation_marks(s)
	final_word = []
	i = 0
	loop do
		if s[i] != '!'
			print s[i]
			final_word.push(s[i])
		end
		i += 1
		if i > s.length
			break
		end
	end
	print final_word
	return "#{final_word.join()}"
end

s = "Hello World!"
remove_exclamation_marks(s)

# Exercise 3
=begin
Task
Your task is to return the correct string using the Template String Feature.
Input
Two Strings, no validation is needed.
Output
You must output a string containing the two strings with the word ```' are '``` 
=end

print "\n\n"
print "Template Strings"
print "\n"


def TempleString(obj, feature)
	new_string = obj + " are " + feature
	puts new_string
	return new_string
end

TempleString("Animals", "Good")

# Exercise 4
=begin
	
Given a random non-negative number, you have to return the digits of this number within an array in reverse order.
Example:

348597 => [7,9,5,8,4,3]

	
=end

print "\n\n"
print "Convert number to reversed array of digits"
print "\n"

def digitize(n)
	str_n = n.to_s
	arr = []
	i = 0
	loop do
		if i < str_n.length
			arr.push(str_n[i])
			i += 1
		else
			break
		end
	end
	print arr
	result = arr.reverse()
	print(result)
end

digitize(348597)


