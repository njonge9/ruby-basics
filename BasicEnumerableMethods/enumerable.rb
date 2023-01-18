# Enumerables are set of convenient built in methods in ruby that are included as part of both arrays and hashes
# with loops
friends = ['Tellence', 'Miriam', 'Steve', 'John', 'Fred']
invited_list = []

for friend in friends do
  if friend != 'Steve'
    invited_list.push(friend)
  end
end

print invited_list

# with enumerable methods
friends = ['Tellence', 'Miriam', 'Steve', 'John', 'Fred']

invite =friends.select {|friend| friend != "Miriam"}
print invite

# or
print friends.reject {|friend| friend == 'Tellence'}

# Each method
# is the granddaddy of enumerable methods.can do anything
# calling each on an array will iterate through the array and prints the elements of the array
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

 friends.each {|friend| puts "Hello, " + friend }

# friends is the array  that contains names
# .each is the enumerable method you are calling on your friends array
# {|friend| puts "Hello, " + friend} is a block, and  inside this block is run for each elemen in your array.Because we have 5 friends in your arry this block will run 5 times once with each of the 5 elements
# |friend|= block variable. element that is being iterated over

# for multiple line plock use the do...end instead of {...}
my_array = [1, 2,3 , 4]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

# Each also works for hashes with bit of added functionality
# By default, ech yield key and value individually or together as an array
my_hash = {"one": 1, "two":2 }

my_hash.each {|key, value| puts "#{key} is #{value}" }

# or
my_hash.each {|pair| puts "The pair is #{pair}"}

# each returns the original array or hash regardless of what happens inside the code block
# for example
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

print friends.each { |friend|  friend.upcase}

# The each_with_index method
# yields two block variables instead of one as it iterates through an array
# The first is the element itself and the second is the index of the element within an array
fruits = ["apple", "banana", "strawberry", "pineapple"]

print fruits.each_with_index {|fruit, index| puts fruit if index.even?}
# returns the original array its called on

# The map method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []

print friends.each {|friend| shouting_at_friends.push(friend.upcase)}
print shouting_at_friends
# map transforms each element from an array according to whatever block you pass to it and returns the transformed elements in a new array
# The above code using map
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

print friends.map {|friend| friend.upcase}

# with map and gsub
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

print my_order.map {|item| item.gsub("medium", "extra large")}

# Deducting rent from salarly over couple of months
salaries = [1200, 1500, 1100, 1800]

print salaries.map {|salary| salary - 700}

# The select method or filter method
# returns a new array with only the items for which the condition you set in the block evaluated to true
# with each
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

friends.each do |friend|
  if friend != "Leo"
    invited_list.push(friend)
  end
end

print invited_list

# with select
print friends.select { |friend| friend != "Brian"}

# After your friends feedback coming or not
# When using enumerable method with hash , you need to set up block for both the key and the value
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }

print responses.select {|person, response| response == 'yes'}

# The reduce method or inject
# Reduces an array or hash down to a single object
# You could use reduce ehen you want to get an output of a single value
# getting the sum of an array using each method
my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each {|number| sum += number}

puts sum

# with reduce

print my_numbers.reduce {|sum, number| sum + number}

# sum = accumalator. the result of each iteration is stored and then passed to the next iteration
# by default the initial value of accumalator is the first element in the collection
# we can set an initial value e.g
my_numbers = [5, 6, 7, 8]

print my_numbers.reduce(1000) {|sum, number| sum + number}

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

print votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end









