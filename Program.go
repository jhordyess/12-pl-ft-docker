package main
import ("fmt")

func main() {
  fmt.Println("Hi, I'm Go ...")

	fmt.Print("New password: ")
	var pass string
	fmt.Scanln(&pass)

	fmt.Print("Retype new password: ")
	var pass2 string
	fmt.Scanln(&pass2)

	if pass == pass2 {
		var spChar, nums int = 0, 0
		for _, x := range pass {
			if x == '!' || x == '@' || x == '#' || x == '$' || x == '%' || x == '&' || x == '*' {
				spChar ++
			}
			if x == '0' || x == '1' || x == '2' || x == '3' || x == '4' || x == '5' || x == '6' || x == '7' || x == '8' || x == '9' {
				nums ++
			}
		}
		if len(pass) >= 7 && spChar >= 2 && nums >= 2 {
			fmt.Println("Password saved ...")
		}	else {
			fmt.Println("Password weak!")
		}
	} else {
		fmt.Println("Password mismatch!")
	}
}