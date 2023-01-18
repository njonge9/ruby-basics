# Procedural programming
def perimeter_of_square side_length
  side_length * 4
end

def area_of_square(side_length)
  side_length * side_length
end

def perimeter_of_triangle (side1, side2, side3)
  side1 + side2 + side3
end

def area_of_triangle(base_width, height)
  base_width * height / 2
end

# OOP
class Shape

end

class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end

  def area
    @side_length * @side_length
  end

  def perimeter
    @side_length * 4
  end
end

class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def area
    @base_width * @height
  end

  def perimeter
    @side1 + @side2 + @side3
  end
end

puts area_of_triangle(6,6)
puts perimeter_of_square(5)

my_square = Square.new(5)
my_triangle = Triangle.new(6, 6, 7.81, 7.81, 7.81)

puts my_square.area
puts my_square.perimeter
puts my_triangle.area
puts my_triangle.perimeter

# class variables
class Square
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end
  def self.count
    @@number_of_squares
  end
end

a = Square.new
# b = Square.new

puts Square.count

# class methods vs instance methods
# class Square
#   def initialize side_length
#     @side_length = side_length
#   end

#   def area
#     @side_length * @side_length
#   end
# end

# s = Square.new(10)
# puts s.area
# the area here is an instance method since it is available in all objects of class Square
# class method are methods that work directly with the class without creating an instance
class Square
  def self.test_method
    puts "Hello from the Square class!"
  end

  def test_method
    puts "Hello from an instance of class Square"
  end
end

Square.test_method #class method
# self represent the current class so def self.test_method defines the method as being specific to the class
# but without it methid are automatically instance methods
Square.new.test_method #instance method
