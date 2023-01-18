# Benefit of inheritance is that classes lower down the hierarchy ger the features of those higher up bu can also add specific features of their own
class ParentClass
  def method1
    puts "Hello from method1 in the parent class"
  end

  def method2
    puts "Hello from method2 in the parent class"
  end
end

class ChildClass < ParentClass
  def method2
    puts "Hello from method2 in the child class"
  end
end

my_object = ChildClass.new
my_object.method1
my_object.method2

class Person
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end
end

class Doctor < Person
  def name
    "Dr. " + super
  end
end

main_class = Person.new("Njonge")
puts main_class.name

# Overiding existing methods(built in methods)
x = "This is a test"
puts x.class

class String
  def length
    20
  end
end

puts "This is a test".length
puts "a".length
puts "A really long line of text".length

# Reflection and discovering an object's methods
# Reflection = the process by which a computer program can inspect , analyzwe, and modify itself while its running and being used
a = "This is a test"
puts a.methods.join
