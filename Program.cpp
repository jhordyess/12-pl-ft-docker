#include <iostream>
using namespace std;
#include <string.h>

int main() {
	cout << "Hi, I'm C++ ..." << "\n";

	string pass;
	cout << "New password: ";
	cin >> pass;
	
	string pass2;
	cout << "Retype new password: ";
	cin >> pass2;
	
	if(pass.compare(pass2) == 0) {
		int spChar = 0;
		int nums = 0;
		for(int i = 0; i < pass.length(); i++){
			if(pass[i] == '!' || pass[i] == '@' || pass[i] == '#' || pass[i]    == '$' || pass[i] == '%' || pass[i] == '&' || pass[i] == '*')
				spChar ++;
			if(pass[i] == '0' || pass[i] == '1' || pass[i] == '2' || pass[i]    == '3' || pass[i] == '4' || pass[i] == '5' || pass[i] == '6' ||    pass[i] == '7' || pass[i] == '8' || pass[i] == '9')
				nums ++;
		}
		if(pass.length() >= 7 && spChar >= 2 && nums >= 2) cout << "Password saved ..." << "\n";
		else cout << "Password weak!" << "\n";
	} else cout << "Password mismatch!" << "\n";
	return 0;
}