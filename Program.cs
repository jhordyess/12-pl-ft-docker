using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Jhordyess{
  class Program{
    static void Main(string[] args){
      Console.WriteLine("Hi, I'm C# ...");

      Console.Write("New password: ");
      string pass = Console.ReadLine();
      
      Console.Write("Retype new password: ");
      string pass2 = Console.ReadLine();

      if(pass.Equals(pass2)){
        int spChar = 0;
        int nums = 0;
        foreach(char x in pass){
          if(x == '!' || x == '@' || x == '#' || x == '$' || x == '%' ||x == '&' || x == '*')
            spChar ++;
          if(x == '0' || x == '1' || x == '2' || x == '3' || x == '4' ||x == '5' || x == '6' || x == '7' || x == '8' || x == '9')
            nums ++;
        }
        if(pass.Length >= 7 && spChar >= 2 && nums >= 2) Console.WriteLine("Password saved ...");
        else Console.WriteLine("Password weak!");
      } else Console.WriteLine("Password mismatch!");
    }
  }
}
