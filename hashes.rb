sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }
my_details = { name: 'Malik', favcolor: 'blue' }
my_hash = { a: 1, b: 2, c: 3, d: 4 }

p my_details[:favcolor] # => 'blue'
p sample_hash['b'] # => 2

another_hash = { a: 1, b: 2, c: 3 }
p another_hash[:a] # => 1

p sample_hash.keys # => ["a", "b", "c"]
p sample_hash.values # => [1, 2, 3]

sample_hash.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end
# OUTPUT:
# The class for key is String and the value is Integer
# The class for key is String and the value is Integer
# The class for key is String and the value is Integer

my_details.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end
# OUTPUT:
# The class for key is Symbol and the value is String
# The class for key is Symbol and the value is String

# To add a value:
my_hash[:e] = "Malik" 
p my_hash # => {:a=>1, :b=>2, :c=>3, :d=>4, :e=>"Malik"}

# To change a value:
my_hash[:c] = "Ruby"
p my_hash # => {:a=>1, :b=>2, :c=>"Ruby", :d=>4, :e=>"Malik"}

# One liner 
my_hash.each { |some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}" }
# OUTPUT:
# The key is a and the value is 1
# The key is b and the value is 2
# The key is c and the value is Ruby
# The key is d and the value is 4
# The key is e and the value is Malik
# => {:a=>1, :b=>2, :c=>"Ruby", :d=>4, :e=>"Malik"}

# Adding conditionals
my_hash.select { |k, v| v.is_a?(String) } # => {:c=>"Ruby", :e=>"Malik"}

## Delete the key if the value is a string
my_hash.each { |k, v| my_hash.delete(k) if v.is_a?(String) } # => {:a=>1, :b=>2, :d=>4}