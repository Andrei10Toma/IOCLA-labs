#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* delete_first(char *s, char *pattern) {
	
	char *temp = (char *)calloc(1000, sizeof(char));

	char *temp2 = (char *)calloc(1000, sizeof(char));


	temp = strstr(s, pattern);
	int lungime_temp = strlen(temp);
	int lungime_s = strlen(s);

	temp = temp + strlen(pattern);

	memcpy(temp2, s, lungime_s - lungime_temp);


	strcat(temp2, strstr(s, pattern) + strlen(pattern));


	return temp2;
}

int main(){
	char *s = "Ana are mere";
	char *pattern = "re";

	// Decomentati linia dupa ce ati implementat functia delete_first.
	printf("%s\n", delete_first(s, pattern));

	return 0;
}
