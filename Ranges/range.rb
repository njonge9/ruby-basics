=begin
  ranges are used in a varieties of ways:
    Ranges as sequences
    Ranges as conditions
    Ranges Intervals
=end

# Ranges as Sequences
puts (1..5) #range from 1 to 5 inclusive
puts (1...5) # range from 1 to 5 exclusive
puts ("a".."d")

digits = 0..9

puts digits.include?(5)
ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i < 5}
puts "Rejected values are #{ret}"

digits.each do |digit|
  puts "In Loop #{digit}"
end

# ranges as conditions

print "Enter your marks:"

answer = gets.chomp

if answer.match(/\d/)
  if answer.to_i in 0..40
    puts "Fail"
  elsif answer.to_i in 41..60
    puts "Pass"
  elsif answer.to_i in 61..80
    puts "Good"
  elsif answer.to_i in 80..99
    puts "Excellent"
  else
    puts "Not in range"
  end
else
  puts "Not a valid number"
end

# Range as intervals
# if ((1..10) === 5)
#   puts "5 lies in (1..10)"
# end







# case answer
# when 0..40
#    result = "Fail"
# when 41..60
#   result = "Pass"
# when 61..80
#   result = "Good"
# when 81..99
#   result = "Excellent"
# else
#   result = "Invalid"
# end

# puts result
# puts result.class
