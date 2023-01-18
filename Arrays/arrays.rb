# ARRAYS
# creating arrays
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

# Accessing elements
puts str_array[0]
puts str_array[1]
puts str_array[2]
puts str_array[3]
puts str_array[4]

# an array can also be created by calling the Array.new method
# You can include up to 2 optional arguments(initial size and default value)
 Array.new
puts Array.new(3)
puts Array.new(3, 7)
puts Array.new(3, true)

# first = returns the first elements in an array
# last = returns the last elements of an array
print str_array.first
print str_array.first(2)
print str_array.last(2)

# Adding and removing elements
# push =adds an element to the end of an array you can also use shovel operator <<
num_array = [1,2]

num_array.push(3, 4, 5)
print num_array
num_array << 6
print num_array

# pop = used to reemove the element at the end of an array and return the element that was removed
num_array.pop()
print num_array

# shift = removes the first element of an array
num_array.shift()
print num_array

# unshift = adds elements at the beginning of an array and returns that array
print num_array.unshift(9)

# pop and shift can take integer arguments
num_array  = [1, 2, 3, 4, 5, 6, 7]

print num_array.pop(4)
print num_array.shift(3)

# adding and subtracting arrays
a = [1, 2,3]
b = [3, 4, 5]

print a + b
print a.concat(b)

# difference
# - = returns a copy of the first array , removing an y elements that appear in the second
print [1, 1, 1, 2, 2, 3 , 4]-[1, 4]

# Basic methods
# methods = returns a long list of available methods
print num_array.methods
puts [].empty?
puts [[]].empty?
puts [1, 2].empty?

puts [1, 2, 3].length
print [1, 2, 3].reverse
puts [1, 2,3].include?(3)
puts [1, 2, 3].include?("3")

puts [1, 2, 3].join
puts [1, 2, 3].join("_")

# iterating using map
# collect is the same as map
a = [1,2,3,4]

print a.map{|num| num**2}

print a.collect{|num| num**2}

print a

# delete_at =helpful if you'd like to eliminate the value at a certain index from your array
print a.delete_at(0)
print a

# delete = use it in situations where you know the value that you want to delete,but not the index
my_pets = ['cat','dog','bird','cat', 'snake']
my_pets.delete('cat')
print my_pets

# uniq = iterates through an array, deletes any duplicate values that exist, then returns the result as a new array
b = [1, 1, 2, 2, 3, 3, 4, 4]
print b.uniq

# uniq! = performs the uniq method destructively
print b.uniq!
print b

# Iterating over an array
# select = iterates over an array and returns a new array that includes any items that return true to the expression provided

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
nums =numbers.select{|number| number > 4}
print nums

# methods with a!
# common array methods
# flatten = can be used to take an array that contains nested arrays and create a one-dimensional array
a = [1, 2, [3, 4, 5], [6, 7]]
print a.flatten
print a

# each_index = iterates through the array ,however the variable represents the index as opposed to the value at each index
print a.each_index{|i| puts "this is index #{i}"}
# the original array is returned

# each_with_index = both index and the value
print a.each_with_index {|val, idx| puts "#{idx+1}. #{val}"}

# sort =returns a sorted array.order an array
a = [5, 3, 8, 2, 4, 1]

val = a.sort
print val

# product = used to combine two arrays. a combination of all elements from all arrays
print [1,2,3].product([4,12,18])

arr = [1,3,5, 7,9,11]
number = 3
print arr.include?(number)

arr = ["b","b"]
arr = arr.product(Array(1..3))
print arr

print arr.first.delete(arr.first.last)

arr = [["test", "hello", "world"], ["example", "men"]]
puts arr[1][0]

arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr.index(5) #5
# puts arr.index[5]

puts arr[5]

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

puts a
puts b
puts c

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

print names

arr = ['Njonge', 'Fred', 'Muturi']

puts arr.each_with_index {|val, indx| puts "#{indx}: #{val}"}

arr = [0, 2, 4, 6, 8, 10]
array1 = arr.map {|num|  num + 2}

print array1
print arr

# if you are creating a string-only array ...
# You can avoid having to type the quotes for every string by creating an array with %w
users = %w(john david peter)
print users

# size = checks the length
puts users.size

# converting arrays into a string
# join = convert an array to a strung
letters = %w(a b c d)

puts letters .join
puts letters .join(" ")

# split = reverse the operation from string to array
print "njonge fred muturi".split

# multi dimensional arrays (2d arrays and more)
# an array can be composed of other arrays, we call that a multidimensional array
# example of 2d array

users = [
  [1, "Fred"],
  [2, "Njonge"]
]
# access the first element
puts users[0][1]

# flatten = used to convert a multi dimensional array into one array
print users.flatten

# sample = if you want to pick one random element array
numbers = [1, 2, 3, 4, 5]
print numbers.sample
# slice/take = taking a portion of an array

print numbers.take(3)
print numbers[1, 3]
print numbers[1..-2]

# empty = checks if an array is empty
puts numbers.empty?

# remove nil values
numbers.push(nil)
print numbers
numbers.compact!
print numbers

# operations with multiple arrays
# join two arrays
# Faster , because this changes the users array
users.concat(new_users)
# slower , because this creates a new array
users += new_users

# remove elements from one array like this
users = users - users_to_delete

# finally you can get the elements that appear in two arrays at the same time
users & new_users




