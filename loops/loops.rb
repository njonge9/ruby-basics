# For loop-used to iterate a collectin of info such as an array or range
for i in 0..5
  puts "#{i} zombies incoming!"
end

# Times loop
# If you need to run a loop for  a specified number of times, then use #times
# it works by iterating through a loop a specified number of times and evenn throws in the bonus of accessing the number its currently iterating through
5.times do
  puts "Hello, world!"
end

5.times do |number|
  puts "Alternative fact number #{number} "
end

# upto and downto loops
# iterate from a starting number up or down to another number respectively
5.upto(10){|num| puts "#{num}"}
10.downto(5) {
  |num|
  puts "#{num}"
}

