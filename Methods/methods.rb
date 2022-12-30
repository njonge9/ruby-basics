# Methods are used to reuse codes over and over again
# Allows DRY approach to programming

# Rubys built in methods
# octothorpes are hashtags in programming
# methods are typically called by adding .method_name after an  instance of an object that contains the method
puts "anything".reverse

# There are some in built ruby methods taht ruby makes globally accesible such as put and prints

# Creating a method
# You can create custom method using the following syntax
def my_name
  "Njonge fred"
end

puts my_name

# def is a built in keyword that tellsruby that this is the start of a method
# my_name is the name of the method
# end tells ruby taht this is the end of the method defination

# Parameters and arguments
# Parameters are variables that your method will receive when it is called

def greet(name) #name = parameter
  "Hello " + name + "!"
end

puts greet("Fred") #fred = argument

# Default Parameters
def greet(name = "stranger")
  "Hi!," + name
end

puts greet
puts greet("Jane")

# What methods return
def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(12)
puts even_odd(11)

# explicit return
def my_name
  return "Joe Smith"
  "Jane Doe"
end

puts my_name
# This example shows how using return stops the method from continuing

# explicit return can be useful when you want to write a method that checks for input error before continuing
def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end
  if number % 2 == 0
    'That is an even number'
  else
    'That is an odd number'
  end
end

puts even_odd(14)
puts even_odd("12")

# Difference between puts and return
# puts = is a method that prints whatever argument you pass it to the console
# return= is the final output of a method that you can use in other places throughout your code
def puts_squared(number)
  puts number * number
end

puts puts_squared(2)

# Chaining Methods
phrase = ["be", "to", "not", "or", "be", "to"]
puts phrase.reverse.join(" ").upcase

# Predicate Methods
# this are methods that end with ? eg even?, odd? or between
# is a convection in ruby that uses method that returns a boolean
puts 5.even?
puts 6.even?
puts 17.odd?
puts 12.between?(10, 11)
# You can create your own method with a ? at the end of its name to indicate that it returns a boolean

# Bang Methods
# When we call amethod on an object it does not modify the original value of that object
# This protects you from irreversibly overwriting your data by accident
whisper = "HELLO EVERYBODY"
puts whisper.downcase
puts whisper
# you can use a ! to indicate that this method performs its action and overwites the original value
puts whisper.downcase!
puts whisper

# you can leave the parenthesis when calling methods

# local scope
a = 5

def locl_scope
  a = 3
end

puts a #you cannot access the 3 in the function as a function creates ts own local scope

# Mutating Arguments
# When calling a method one or more arguments can be altered permanently
a = [1, 2,3]

def mutate(array)
  array.pop()
end

puts "Before mutate method: #{a}"
mutate(a)
puts "After mutate method: #{a}"

def no_mutate(array)
  array.last
end

a = [1, 2, 3, 4]
p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"

# Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.
def greeting(name)
  "Hi programmer #{name}"
end

puts greeting("Njonge")

def multiply(num1, num2)
  product = num1 * num2
  return product
end

puts multiply(2,3)


