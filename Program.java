import java.util.Scanner;
import java.util.Arrays;

public class Program{
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    System.out.println("Hi, I'm Java ...");

    System.out.print("New password: ");
    String pass = input.nextLine();

    System.out.print("Retype new password: ");
    String pass2 = input.nextLine();

    if(pass.equals(pass2)){
      int spChar = 0;
      int nums = 0;
      for(int i = 0; i < pass.length(); i++){
        if(pass.charAt(i) == '!' || pass.charAt(i) == '@' || pass.charAt(i) == '#' || pass.charAt(i) == '$' || pass.charAt(i) == '%' || pass.charAt(i) == '&' || pass.charAt(i) == '*')
          spChar ++;
        if(pass.charAt(i) == '0' || pass.charAt(i) == '1' || pass.charAt(i) == '2' || pass.charAt(i) == '3' || pass.charAt(i) == '4' || pass.charAt(i) == '5' || pass.charAt(i) == '6' || pass.charAt(i) == '7' || pass.charAt(i) == '8' || pass.charAt(i) == '9')
          nums ++;
      }
      if(pass.length() >= 7 && spChar >= 2 && nums >= 2) System.out.println("Password saved ...");
      else System.out.println("Password weak!");
    } else System.out.println("Password mismatch!");
  }
}
