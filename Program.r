cat("Hi, I'm R ...", sep = "\n");

cat("New password: ")
pass <- readLines("stdin", n = 1)

cat("Retype new password: ")
pass2 <- readLines("stdin", n = 1)

if (pass == pass2){
  spChar <- nums <- 0
  for(x in strsplit(pass, "")[[1]]){
    if(x == "!" || x == "@" || x == "#" || x == "$" || x == "%" || x == "&" || x == "*")
      spChar <- spChar + 1
    if(x == "0" || x == "1" || x == "2" || x == "3" || x == "4" || x == "5" || x == "6" || x == "7" || x == "8" || x == "9")
      nums <- nums + 1
  }
  if(nchar(pass) >= 7  && spChar >= 2  && nums >= 2) cat("Password saved ...\n") 
  else cat("Password weak!\n")
} else cat("Password mismatch!\n")
