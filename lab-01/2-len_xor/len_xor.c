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

void equality_check(const char *str)
{
	/* TODO */
	int lungime = my_strlen(str);
	for(int i = 0; i < lungime; i++) {
		if(!(*(str + i) ^ *(str + ((i + (1 << i)) % lungime)))) 
			printf("Adress of %c: %p\n", *(str + i), str + i);
	}
}

int main(void)
{
	/* TODO: Test functions */
	printf("%d\n", my_strlen("aac"));
	equality_check("aac");
	return 0;
}

