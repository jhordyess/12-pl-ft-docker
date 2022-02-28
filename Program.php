<?php
echo "Hi, I'm PHP ...\n";

$pass = readline("New password: ");

$pass2 = readline("Retype new password: ");

if(strcmp($pass, $pass2) == 0){
  $spChar = $nums = 0;
  foreach (str_split($pass) as $x) {
    if($x == "!" or $x == "@" or $x == "#" or $x == "$" or $x == "%" or $x == "&" or $x == "*")
      $spChar += 1;
    if($x == "0" or $x == "1" or $x == "2" or $x == "3" or $x == "4" or $x == "5" or $x == "6" or $x == "7" or $x == "8" or $x == "9")
      $nums += 1;
  }
  if(strlen($pass) >= 7 and $spChar >= 2 and $nums >= 2) echo "Password saved ...\n";
  else echo "Password weak!\n";
} else echo "Password mismatch!\n";
?>