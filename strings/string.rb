# string concantetion
puts "Test" + "Test"

# capitalize = makes the first letter a capital letter
puts "test".capitalize

# downcase = makes letters lowercase
puts "TEST".downcase

# chop = removes any repeted letter
puts "Test".chop

# next = moves the last letter to the next character
puts "Test".next

# reverse = reverse the letters
puts "Njonge".reverse

# swapcase = Makes the letters after the first one case opposite
puts "Test". swapcase

# REGULAR EXPRESSION
# substitutions = substitute something within a string with something else
puts "foobar".sub('bar', 'foo')

# gbsub = sub does one substitution at a time wheraeas gsub does multiple substitution at once
puts "this is a test".gsub("i", '')

# matching letters
x = "This is a test"
puts x.sub(/^..../, 'Hello')
# ^ is an anchor that matches the first two characters

# if you want to change the last characters use $
x = "This is a test"
puts x.sub(/..$/ ,'ta')

# Iteration with regular expression
# scan

"xyz".scan(/./) {|letter| puts letter}

"This is a test".scan(/../) {|x| puts x}

# Matching only leters and digits
"This is a test".scan(/\w\w/) {|x| puts x}
# \w means = any alphanumeric character or underscore
=begin
  ^ = anchor for the beggining of a line
  $ = anchor for the end of the line
  \A = Anchor for the starting of a string
  \z = Anchor for the end of the string
  . = Any character
  \w = Any letter, digit, or underscore
  \W = Anything that \w doesn't match
  \d = Any digit
  \D = Anything that \d doesn't match (non-digits)
  \s = Whitespace
  \S = Non-whitespace (any visible character)
=end

# From the above comment, you can extract numbers from
"The car costs $1000 and the cat costs $10".scan(/\d+/) do |x|
  puts x
end

# The + is used to match as many digits in a row as possible

=begin
  * Match zero or more occurrences of the preceding character, and match as many as possible.
  + Match one or more occurrences of the preceding character, and match as many as possible.
  *? Match zero or more occurrences of the preceding character, and match as few as possible.
  +? Match one or more occurrences of the preceding character, and match as few as possible.
  ? = Match either one or none of the preceding character.
  {x} Match x occurrences of the preceding character.
  {x,y} Match at least x occurrences and at most y occurrences.
=end

# Character class
# Allow you to match against a specific set of characters
"This is a test".scan(/[aeiou]/) {|x| puts x}
# [aeiou] mean match any of the character a,e,i,o,u

# You can also specify ranges of characters inside the sqiuare brackets
"Njonge is a programmer".scan(/[a-m]/) {|x| puts x}

# checking whether a certain string matches against the pattern of your choice
puts "String has vowels" if "This is a test" =~ /[aeiou]/
# =~ is another form of operator: a matching operator
# If the string has a match with the regular expresion following the operator , then the expression returns the position of the first match

puts "Short sentence. Another. No more.".split(/\./).inspect
