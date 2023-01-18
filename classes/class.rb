class Square
attr_accessor :side_length
end

s1 = Square.new #creates a new square
s1.side_length = 5 #sets its side length
puts "Side length of s1 = #{s1.side_length}" #prints the side length

# s1 = Square.new
# This creates a new square and store its parameters into a variable s1
# A new class instance can be created by using <class name>.new
# Having created the square we can now access the side_length
# We can then use it for any purpose

# Functions in class

class Square
  attr_accessor :side_length

  def area
    @side_length * @side_length
  end

  def perimeter
    4 * @side_length
  end
end

a = Square.new
a.side_length = 5
puts "Area: #{a.area}"
puts "Perimeter: #{a.perimeter}"

=begin
  we use @side_length in the function instead of side_length
  to differentiate between a local variable and a class variable
  or functions that share the same name
=end

# Initializers or constructors
class Square
  attr_accessor :side_length

  def initialize side_length = 0
    @side_length = side_length
  end

  def area
    @side_length * @side_length
  end

  def perimeter
    4 * @side_length
  end
end

s1 = Square.new 4
s2 = Square.new
s2.side_length = 5

puts "Area of s1 is #{s1.area} squnits"
puts "Perimeter of s2 is #{s2.perimeter} units"

# Unexposed instance variables
class Human
  def set_name name
    @name = name
  end

  def get_name
    @name
  end
end

a = Human.new
a.set_name  "Njonge"
b = Human.new
b.set_name "John"

puts "#{a.get_name} and #{b.get_name} are best friends."

