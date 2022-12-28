phrase = "I am learning ruby";
puts phrase.upcase()
puts phrase.strip()
puts phrase.length()
puts phrase.include? "rubys"
puts phrase[0]

puts "Enter you name:"
name = gets.chomp()
puts "Enter your age:"
age = gets.chomp()

puts ("I am " +name + " and I am " +age + " old")

# Building a simple calculator
puts "Enter the first Number:"
num1 = gets.chomp()
puts "Enter the second Number:"
num2 = gets.chomp()

sum = num1.to_f + num2.to_f

puts(sum)

Building a madlib game
puts "Enter the color:"
color = gets.chomp()
puts "Enter a pluralNoun"
pluralNnoun = gets.chomp()
puts "Enter a celebrity:"
celebrity = gets.chomp()

puts ("Roses are "+ color)
puts (pluralNoun +" are blue")
puts ("Ï love " + celebrity)
