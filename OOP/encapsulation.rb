# Encapsulation = the way which data and methods can be bundled together into objects that operate as a single unit
# in ruby is used to describe the ability for an object to have certain methods and attributes available publicly,but for others to be visible withi the class itself
class Person
  def initialize(name)
    set_name(name)
  end

  def name
    @first_name + ' ' + @last_name
  end

  private
  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end

  def set_first_name(name)
    @first_name = name
  end

  def set_last_name(name)
    @last_name = name
  end
end

p = Person.new("Fred Njonge")
p.set_first_name("Kariuki")
puts p.name
