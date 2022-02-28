print("Hi, I'm Swift ...")

print("New password: ", terminator: "")
var pass:String = readLine() ?? ""

print("Retype new password: ", terminator: "")
var pass2:String = readLine() ?? ""

if pass == pass2 {
  var spChar:Int = 0
  var nums:Int = 0
  for x in pass{
    if x == "!" || x == "@" || x == "#" || x == "$" || x == "%" || x == "&" || x == "*" {
      spChar += 1
    }
    if x == "0" || x == "1" || x == "2" || x == "3" || x == "4" || x == "5" || x == "6" || x == "7" || x == "8" || x == "9" {
      nums += 1
    }
  }
  if pass.count >= 7 && spChar >= 2 && nums >= 2 {
    print("Password saved ...")
  } else {
    print("Password weak!")
  }
} else {
  print("Password mismatch!")
}