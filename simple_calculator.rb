# Task
# Create a calculator that takes in two numbers and return the sum, product, quotient, difference, and remainder

puts "Simple calculator"
25.times { print "-" }
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "The first number multiplied by the second number is #{num_1.to_i * num_2.to_i}"
puts "The first number divided by the second number is #{num_1.to_f / num_2.to_f}"
puts "The first number subtracted from the second number is #{num_1.to_i - num_2.to_i}"
puts "The sum of the first and second numbers is #{num_1.to_i + num_2.to_i}"
puts "The remainder of the first number when diveded by the second number is #{num_1.to_f % num_2.to_f }"
