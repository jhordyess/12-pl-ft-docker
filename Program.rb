puts "Hi, I'm Ruby ..."

print("New password: ")
pass = gets.chomp

print("Retype new password: ")
pass2 = gets.chomp

if pass == pass2
  spChar = nums = 0
  pass.split('').each do |x|
    if x == "!" or x == "@" or x == "#" or x == "$" or x == "%" or x == "&" or x == "*"
      spChar += 1
    end
    if x == "0" or x == "1" or x == "2" or x == "3" or x == "4" or x == "5" or x == "6" or x == "7" or x == "8" or x == "9"
      nums += 1
    end
  end
  if pass.length >= 7 and spChar >= 2 and nums >= 2
    puts "Password saved ..."
  else
    puts "Password weak!"
  end
else
  puts "Password mismatch!"
end