puts "Njonge is a programmer" if 1 < 2



attack_by_land = false

if attack_by_land == true
  puts "release the goat"
else
  puts "release kevin the octopus"
end

puts 5 == 5

# eql = checks both the value type and the actual value it holds
puts 5.eql?(5.0)
puts 5.eql?(5)

#equal?=checks both values are the exact same object in memory
a  = 5
b = 5
puts a.equal?(b)

text1 = 'hello'
text2 = 'hello'

puts text1.equal?(text2)

# spaceship operator = return the following
# -1 if the value on the left is less than the value on the right
puts 5 <=> 10
#  0 if the value on the left is equal to the value on the right
puts 10 <=> 10
# 1 if the value on the left is greater than the vale on the right
puts 10 <=> 5

# mostly used in sorting functions

# LOGICAL OPERATORS
# ruby has two differrent forms of logical operators
# symbolic && and ||
# English-style oerators and and or
# short circuit evaluation = when the first expression is evaluated to true then the second is never checked
if 10 < 2 || 5 < 6 #although the left is false, the left is true hence evaluated
  puts "Party at Njonge's!"
end

# This can also be written as
if 10 < 2 or 5 < 6
  puts "Party at Njonge's!"
end

#  the ! =reverse the logic expression
# case statements
grade = 'A'

did_i_pass = case grade
  when "A"
     puts "Hell yeah!"
  when "D"
     puts "Don't tell your mother"
  else
    puts "'YOU SHALL NOT PASS!' - Gandalf"
end

# Unless Statements
# works in opposite way as an if statement: i only processes the code in block if the expression evealuates to false.
age = 19
unless age < 20
  puts "Get a job."
else
  puts "Go home!"
end

# Ternary operator
# is a one line if...else statement that can make your code much more concise
# syntax= conditional statement?<execute if true>:<execute if false>
age = 9
response = age < 18 ? "You still have your entire life ahead": "You're all grown up."
puts response

# loops
# blocks of code that are continually repeated until a certain condition is met
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# while loop
i = 0
while i < 10 do
  puts "f is #{i}"
  i += 1
end


# while gets.chomp != "yes" do
#   puts "Will you go to prom with me?"
# end

# until loop
# is the opposite of the while loop
# A while loop continues as long as the conditon is true, whereas an until continues for as the condtion is false
i = 0
until i >= 10 do
  puts "G is #{i}"#loops untill the condition i > 10 is true
  i += 1
end

until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end

# Ranges = if you know how many times we want our loop to run we can use intervals in range
# All we need is give ruby a starting value, the ending value and whethe we want the range to be inclusive or exclusive
 (1..5) #inclusive range:1, 2, 3, 4, 5
 (1...5) #exclusive range: 1, 2, 3, 4

# We can make ranges of letter too!
puts ('a'..'d') #a, b, c, d

