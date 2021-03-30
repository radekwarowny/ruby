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
	result = arr.reverse()
	result = result.map(&:to_i)
	print result
	return result

end

digitize(348597)


# Exercise 5

=begin
I have a cat and a dog.
I got them at the same time as kitten/puppy. That was humanYears years ago.
Return their respective ages now as [humanYears,catYears,dogYears]

NOTES:

    humanYears >= 1
    humanYears are whole numbers only

Cat Years

    15 cat years for first year
    +9 cat years for second year
    +4 cat years for each year after that

Dog Years

    15 dog years for first year
    +9 dog years for second year
    +5 dog years for each year after that

	
=end

print "\n\n"
print "Cat years, Dog years"
print "\n"

def human_years_cat_years_dog_years(human_years)

	cat_years = 0
	dog_years = 0

	i = 1

	while i < (human_years + 1) do
		if i == 1
			cat_years += 15
			dog_years += 15
		elsif i == 2 
			cat_years += 9
			dog_years += 9
		elsif i > 2
			cat_years += 4
			dog_years += 5
		else 
			puts "Input Error"
		end

		i += 1
	end
	puts human_years, cat_years, dog_years
	return [human_years, cat_years, dog_years]
end

human_years_cat_years_dog_years(10)

# Exercise 6

=begin
Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.

For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter; and month 11 (November), is part of the fourth quarter.

=end

print "\n\n"
print "Quarter of the year"
print "\n"


def quarter_of(month)

	quarter = 0
	if month <= 3
		quarter = 1
	elsif month > 3 and month <= 6
		quarter = 2
	elsif month > 6 and month <= 9
		quarter = 3
	else
		quarter = 4
	end

	puts quarter
	return quarter
end

quarter_of(3)
quarter_of(5)
quarter_of(7)
quarter_of(10)


# Exercise 7

=begin

Issue

Looks like some hoodlum plumber and his brother has been running around and damaging your stages again.

The pipes connecting your level's stages together need to be fixed before you receive any more complaints. Each pipe should be connecting, since the levels ascend, you can assume every number in the sequence after the first index will be greater than the previous and that there will be no duplicates.
Task

Given the a list of numbers, return the list so that the values increment by 1 for each index up to the maximum value.
Example

Input: 1,3,5,6,7,8

Output: 1,2,3,4,5,6,7,8


=end

print "\n\n"
print "Lario and Muigig Pipe Problem"
print "\n"

def pipe_fix(nums)

	fst_num = nums[0]
	lst_num = nums[-1]
	result = (fst_num..lst_num).to_a
	
	puts result
	return result
	end

pipe_fix([1,2,3,5,6,8,9])



# Exercise 8

=begin

Given an array of integers your solution should find the smallest integer.

For example:

    Given [34, 15, 88, 2] your solution will return 2
    Given [34, -345, -1, 100] your solution will return -345

You can assume, for the purpose of this kata, that the supplied array will not be empty.

=end

print "\n\n"
print "Find the smallest integer in the array"
print "\n"

def find_smallest_int(arr)
	smallest = arr[0]
	i = 0
	arr.each do |i| 
		if i < smallest
			smallest = i
		end
	end
	puts smallest
	return smallest	
	end

find_smallest_int([78,56,232,12,8])
find_smallest_int([78,56,-2,12,8])
find_smallest_int([-78,56,-2,12,8])


# Exercise 9

=begin

You need to double the integer and return it.

=end

print "\n\n"
print "You Can't Code Under Pressure #1"
print "\n"

def double_integer(i)
	puts i * 2
	return i * 2

	end

double_integer(6)


# Exercise 10

=begin

Create a function that gives a personalized greeting. This function takes two parameters: name and owner.

Use conditionals to return the proper message:
case 	return
name equals owner 	'Hello boss'
otherwise 	'Hello guest'

=end

print "\n\n"
print "Personalised greeting"
print "\n"

def greet(name, owner)
	greeting = ""
	if name == owner
		greeting = "Hello boss"
	elsif name != owner
		greeting = "Hello guest"
	else
		greeting = "Invalid Input"
	end
	puts greeting
	return greeting 
		

end

greet("Daniel","Daniel")
greet("Daniel","Jonh")


