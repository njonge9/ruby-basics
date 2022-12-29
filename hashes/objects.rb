# hashes are objects in javascript and dictionaries in python
# creating hashes

my_hash = {
  "a random word" => 'ahoy',
  "Njonge's math test score" => 98,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

# keys and values are associated with a special operator called a hash rocket =>

# hashes can also be created with the new keyword
hash_1 = Hash.new
print hash_1

# ACCESSING VALUES
# You can access values in a hash the same way that you can access elements in an arrray
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

print shoes["summer"]

# if you try to access a key that doesnt exist the hash returns nil
puts shoes["hiking"]

# sometimes this behavior can cause problems.
# fetch method is used to raise an error when trying to access a key that is not in your hash
# puts shoes.fetch("hiking")

# This method can return a default value instead of raising an error if the given key is not found
puts shoes.fetch("hiking", "hiking boots")

# Adding and changing data
# adding
shoes["fall"] = "sneakers"

puts shoes

# changing data
shoes["summer"] = "flip-flops"
puts shoes

# removing data
shoes.delete("summer")
puts shoes

# Methods
# keys and value methods
# both methods returns an arrays
books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the wild" => "Jon Krakauer"
}

print books.keys
print books.values

# Merging two hashes
hash1 = {"a" => 100, "b" => 2000}
hash2 = {"b" => 1230, "c" => 240}

puts hash1.merge(hash2)
# notice that the value of hash1 b is overwritten by that of hash2

# Symbols as Hash keys
# in real world you will amost always see symbols (like :this_guy) used as keys
# used because symbols are more performant than strings
# allow for much cleaner syntax when defining hashes

# Rocket syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}

# Symbols syntax
japanese_cars = {
  honda: "Accord",
  toyota: "corolla",
  nissan: "Altima"
}

# The latter one works only with symbols else you'll get a syntax error
# you can access the above data
puts american_cars[:ford]
puts japanese_cars[:honda]

# iterating over hashes
person = {name: 'Njonge' , height: "6 ft", weight: "160 lbs", hair: "brown"}

person.each do |key, value|
  puts "Njonge's #{key} is #{value}"
end

# Hashes as optional parameters
def greeting (name, options={})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}"
  end
end

puts greeting("Njonge")
puts greeting("Njonge" ,{age: 22, city: "Nairobi"})
# {} are not required when a hash is the last argument

# common hash methods
# key = allows you to check if a hash conatins a specific key. returns a boolean value
name_and_age = {"Njonge" => 42, "John" => 31, "Joe" => 19}
puts name_and_age.key?("Njonge")
puts name_and_age.key?("steve")

# select = allows you to pass a block and will return any key-value pairs that eva;luates to true when passed to the block.
puts name_and_age.select {|k, v| k == "Njonge"}
puts name_and_age.select {|k, v| k == "Njonge" || (v == 19)}
puts name_and_age.select {|k, v| k == "kamau"}

# to_a = returns an array version of your hash when called
print name_and_age.to_a

# use Ruby's built-in select method to gather only siblings' names into a new array
family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", 'jil', 'beth'],
  brothers: ['frank', 'rob', 'david'],
  aunts: ['mary', 'sally', 'susan']
}

names= family.select {|k, v| k == :sisters || k == :brothers}
print names.values.flatten

# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
japanese_cars = {
  honda: "Accord",
  toyota: "corolla",
  nissan: "Altima"
}

print japanese_cars.each_key {|key| puts key}
print japanese_cars.each_value {|value| puts value}
print japanese_cars.each {|key, value| puts "#{key}:#{value}"}

# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]

# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash

puts person.value?("painting")
puts person.fetch(:painting)

# Given the following code...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# ANSWER = The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.


