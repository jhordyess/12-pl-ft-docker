#include <stdio.h>
#include <string.h>

int main() {
	printf("Hi, I'm C ...\n");

	char pass[100];
	printf("New password: ");
	scanf("%s", pass);

	char pass2[100];
	printf("Retype new password: ");
	scanf("%s", pass2);

	if(strcmp(pass, pass2) == 0){
		int spChar = 0;
		int nums = 0;
		for(int i = 0; i < strlen(pass); i++){
			if(pass[i] == '!' || pass[i] == '@' || pass[i] == '#' || pass[i] == '$' || pass[i] == '%' || pass[i] == '&' || pass[i] == '*')
				spChar += 1;
			if(pass[i] == '0' || pass[i] == '1' || pass[i] == '2' || pass[i] == '3' || pass[i] == '4' || pass[i] == '5' || pass[i] == '6' || pass[i] == '7' || pass[i] == '8' || pass[i] == '9')
				nums += 1;
		}
		if(strlen(pass) >= 7 && spChar >= 2 && nums >= 2) printf("Password saved ...\n");
		else printf("Password weak!\n");
	} else printf("Password mismatch!\n");
	return 0;
}