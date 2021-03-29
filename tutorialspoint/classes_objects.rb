#!/usr/bin/ruby -w

# Defining a Class in Ruby

class Customer
	@@no_of_customers = 0
end

# Creating Objects in Ruby using new Method

cust1 = Customer. new
cust2 = Customer. new
cust3 = Customer. new

# Custom Method to Create Ruby Objects

class User 
	@@no_of_users = 0
	def initialize(id, name, addr)
		@user_id = id
		@user_name = name
		@user_add = addr

	end
end

user1 = User.new("1", "John", "Wisdom Apartments, Ludhiya")
user2 = User.new("2", "Poul", "New Empire road, Khandala")

# Member Functions in Ruby Class


class Sample
	def hello
		puts "Hello Ruby!"
	end
end

object = Sample. new
object.hello

# Ruby Class Case Study

class Customer
	@@no_of_customers = 0
	def initialize(id, name, addr)
		@cust_id = id
		@cust_name = name
		@cust_addr = addr
	end
	def display_details()
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer address #cust_addr"
	end
	def total_no_of_customers()
		@@no_of_customers += 1
		puts "Total number of customers: #@@no_of_customers"
	end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

cust1.display_details()
cust1.total_no_of_customers()

cust2.display_details()
cust2.total_no_of_customers()

# Ruby Global Variables

$global_variable = 10

class Class1
	def print_global
		puts "Global variable in Class1 is #$global_variable"
	end
end

class Class2
	def print_global
		puts "Global variable in Class2 is #$global_variable"
	end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

# Ruby Constants

class Example
	VAR1 = 100
	VAR2 = 200
	def show
		puts "Value of first Constant is #{VAR1}"
		puts "Value of second Constant is #{VAR2}"
	end
end

object = Example.new()
object.show