# Task
# Write a program that gets input from the user (first and last name) and returns the full name, reversed full name, and the amount of characters in the name (not including whitespace)

# Solution
puts "Enter your first name"
first_name = gets.chomp

puts "Enter your last name"
last_name = gets.chomp

full_name = first_name + " " + last_name
puts "Your full name is #{full_name}"

puts "Your full name reversed is #{full_name.reverse}"

puts "Your name has #{full_name.gsub(/[[:space:]]/, '').length} characters in it"