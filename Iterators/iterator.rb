# Iterators are nothing but methods supported by collections
# iterators return the elements of a collection one after the other
ary = [1, 2, 3, 4]
ary.each do |i|
  puts i
end

# Collect = returns the entire collection
a = [1, 2,3 , 4, 5]
b = Array.new
b = a.collect

print b
