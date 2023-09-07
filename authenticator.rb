users = [
  { username: "malik", password: "password1" },
  { username: "tanesha", password: "password2" },
  { username: "john", password: "password3" },
  { username: "jane", password: "password4" },
  { username: "dante", password: "password5" },
]

def authenticator(username, password, users_list)
  users_list.each do |user|
    if (user[:username] == username) && (user[:password] == password)
      return user
    end
  end
  return 'Credentials were not correct'
end

puts "Welcome to the authenticator"
28.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"
puts

count = 0;

while count < 4
  print "Username: "
  username = gets.chomp  
  print "Password: "
  password = gets.chomp
  authentication = authenticator(username, password, users)
  puts authentication
  print 'Press n to quit or any other key to continue: '
  input = gets.chomp
  
  if input == 'n'
    break
  end
  count += 1
end

if count >= 4
  puts "You have exceed the maximum number of authentication attempts" 
end

