const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout,
});

const input = (msg = "") => {
  return new Promise(resolve => {
    readline.question(msg, resolve);
  });
}

const main = async () => {
  console.log("Hi, I'm JavaScript ...");

  const pass = await input("New password: ");

  const pass2 = await input("Retype new password: ");
  
  if(pass === pass2){
    let spChar = nums = 0;
    for(x of pass.split("")){
      if(x == "!" ||  x == "@" ||  x == "#" ||  x == "$" ||  x == "%" ||  x == "&" ||  x == "*")
        spChar ++;
      if(x == "0" ||  x == "1" ||  x == "2" ||  x == "3" ||  x == "4" ||  x == "5" ||  x == "6" ||  x == "7" ||  x == "8" ||  x == "9")
        nums ++;
    }
    if(pass.length >= 7 && spChar >= 2 && nums >= 2) console.log("Password saved ...");
    else console.log("Password weak!");
  } else console.log("Password mismatch!");
  readline.close();
}

main();
