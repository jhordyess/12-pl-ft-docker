print("Hi, I'm Python ...")

pass1 = input("New password: ")

pass2 = input("Retype new password: ")

if pass1 == pass2:
  spChar = nums = 0
  for x in pass1:
    if x == "!" or x == "@" or x == "#" or x == "$" or x == "%" or x == "&" or x == "*":
      spChar += 1
    if x == "0" or x == "1" or x == "2" or x == "3" or x == "4" or x == "5" or x == "6" or x == "7" or x == "8" or x == "9":
      nums += 1
  if len(pass1) >= 7 and spChar >= 2 and nums >= 2:
    print("Password saved ...")
  else:
    print("Password weak!")
else:
  print("Password mismatch!")