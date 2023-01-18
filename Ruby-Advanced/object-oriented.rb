# Ruby Class Defination
class Box

end

# Define Ruby Objects
# We declare an object with the keyword new
box1 = Box.new
box2 = Box.new

# Initialize Method
# Initialize method works the same as the constructor
# Useful when you want to initialize some class variables at the time of object creation
class Box
  def initialize(w, h)
    @width, @height = w, h
  end
end

# The instance Variables
# Accesed using the @ operator within the class but to access them outside the class we use public methods
# Wich are called accessor methods
class Box
  def initialize(w, h)
    # assign instance variables
    @width, @height = w, h
  end
end

# The accessor and setter methods
# To make the variables available from outside the class, they must be defined within accessor methods
# These accesor methods are also called getter methods

# Define a class
class Box
  # constructor method
  def initialize(w, h)
    @width,@height = w, h
  end

  # accessor methods
  def printWidth
    @width
  end

  def printHeight
    @height
  end
end

# create an object
box = Box.new(10,20)

# use accessor methods
x = box.printWidth
y = box.printHeight

puts "Width of the box is: #{x}"
puts "Height of the box is: #{y}"

# Setter methods

# Define a class
class Box
  # constructor method
  def initialize(w, h)
    @width,@height = w, h
  end

  # accessor methods
  def printWidth
    @width
  end

  def printHeight
    @height
  end

    # setter methods
    def setWidth=(value)
      @width = value
    end

    def setHeight=(value)
      @height = value
    end

end

# create an object
box = Box.new(10,20)

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.printWidth
y = box.printHeight

puts "Width of the box is: #{x}"
puts "Height of the box is: #{y}"

# The instance method

# define a class
class Box
  def initialize(w, h)
    # assign instance variables
    @width, @height = w, h
  end

  # instance method
  def getArea
    @width * @height
  end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is: #{a}"

# The class methods and Variables
# class variable is a variable
class Box
  # Initialize our class variable
  @@count = 0
  def initialize(w,h)
    # assign instance variable
    @width, @height = w, h

    @@count += 1
  end

  def self.printCount()
    puts "Box count is: #@@count"
  end
end

# Create two objects
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

# Call class method to print box count
Box.printCount()

# The to_s Method
# Any class you define shoyld have a to_s instance method to return  astring representation of the object
class Box
  # constructor method
  def initialize(w,h)
    @width,@height = w,h
  end
  # define to_s method
  def to_s
    "(w:#@width, h:#@height)" #string formatting of the object
  end
end

# create an object
box = Box.new(10,20)

# to_s method will be called in reference of string automatically
puts "String representation of box is : #{box }"

# ACCESS METHODS
# Ruby gives you 3 levels of protection at instance method level
# Wich are public, private, protected
class Box
  # constructor method
  def initialize(w,h)
    @width,@height = w,h
  end

  # Instance method by default it is public
  def getArea
    getWidth() * getHeight
  end

  # define private accessor methods
  def getWidth
    @width
  end
  def getHeight
    @height
  end

  # make them private
  private :getWidth, :getHeight

  # instance method to print area
  def printArea
    @area = getWidth() * getHeight
    puts "Big box area is : #@area"
  end

  # make it protected
  protected :printArea
end

# Create an object
box = Box.new(10,20)

# call instance method
a = box.getArea()
puts "Area of the box is : #{a}"

# try calling the protected method
# box.printArea()

# Building a quiz
class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt, @answer = prompt, answer
  end
end

p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "What color are bananas?\n(a)pink\n(b)red\n(c)yellow"
p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

questions = [
  Question.new(p1, "a"),
  Question.new(p2, "c"),
  Question.new(p3, "b")
]

def run_test(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
    end
  end
  puts "You got #{score.to_s} / #{questions.length().to_s}"
end

run_test(questions)

# class inheritance

