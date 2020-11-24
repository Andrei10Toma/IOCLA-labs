#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int my_strlen(const char *str)
{
	/* TODO */
	int lungime = 0;
	while(*str != '\0') {
		lungime++;
		str = str + 1;
	}
 	return lungime;	
}

void mirror(char *s)
{
	/* TODO */
	printf("%s\n", s);
	int lungime = my_strlen(s);
	char c1 = '\0';
	for(int i = 0; i < lungime / 2 + lungime % 2; i++) {
		c1 = *(s + i);
	 	*(s + i) = *(s + (lungime - (i + 1)));
		*(s + (lungime - (i + 1))) = c1;	
	}
	printf("%s\n", s);
}

int main()
{
	/* TODO: Test function */
	char *s = (char *)calloc(100, sizeof(char));
	strcpy(s, "AnaAreMere");
	mirror(s);
	return 0;
}

