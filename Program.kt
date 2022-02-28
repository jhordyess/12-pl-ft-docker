fun main() { 
  println("Hi, I'm Kotlin ...")

  print("New password: ")
  var pass:String = readLine() ?: ""

  print("Retype new password: ")
  var pass2:String = readLine() ?: ""

  if(pass.equals(pass2)){
    var spChar:Int = 0
    var nums:Int = 0
    for(x in pass) {
      if(x == '!' || x == '@' || x == '#' || x == '$' || x == '%' || x == '&' || x == '*')
      spChar ++
    if(x == '0' || x == '1' || x == '2' || x == '3' || x == '4' || x == '5' || x == '6' || x == '7' || x == '8' || x == '9')
      nums ++
    }
    if(pass.length >= 7 && spChar >= 2 && nums >= 2) println("Password saved ...")
    else println("Password weak!")
  } else println("Password mismatch!")
}