# Puts Statement
# instruct the program to display the value stored in the variable
# This will add a new line at the end of each line it writes
val1 = "This is a variable one"
val2 = "This is a variable two"

puts val1
puts val2

# Gets Statement
# Used to take any input from the user from a screen called STDIN

# Putc Statement
# outputs the entire screen
# used to output one character at a time

str ="Hello Ruby!"
putc str

# Opening and closing files
# file.new method = creates a file object for reading and writing
# You can use the file.close method to close the file

# File.open
# creates a new file object
# the difference btwn file.open and file.new is that file.open can be associated with ablock while the latter cannot

# Sysread Method
# Reads the contents of a file
aFile = File.new("text.txt" , "r")
if aFile
  content = aFile.sysread(2000)
  puts content
else
  puts "Unable to open file"
end


# syswrite method
# writes the content of into a file
aFile = File.new("text.txt", "r+")
if aFile
  aFile.syswrite("ASDFGHJKL")
else
  puts "Unable to open file"
end

# The each_byte method
# always associated with a block
aFile = File.new("text.txt", "r+")
if aFile
  aFile.syswrite("ASDFGHJKL")
  aFile.each_byte {|ch| putc ch; putc ?.}
else
  puts "Unable to open file!"
end

# The IO readlines Method
# IO has method and one is readlines which returns the content of the file line by line
arr = IO.readlines("text.txt")
puts arr[0]
puts arr[1]

# The IO.forech 
