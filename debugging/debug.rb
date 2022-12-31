# Debugging = art of finding the cause of problems and then fixing them in code
# stack trace is a wall text produced when a ruby program crashes after encpuntering a runtime error or exception
# the first line of a stck trace provide most useful info about an error

# Debugging with puts
# The easiest and quickest way to confirm your assumptions while debugging is buy using puts

def isogram?(string)
  original_length = string.length
  p original_length
  string_array = string.downcase.split('')
  p string_array
  unique_length = string_array.uniq.length
  p unique_length
  original_length == unique_length
end

puts isogram?('Odin')
# this didn't work why?

# Debugging with Pry-byebug
require 'pry-byebug'

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

puts yell_greeting("bob")
