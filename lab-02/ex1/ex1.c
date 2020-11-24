
#include <stdio.h>

/**
 * Afisati adresele elementelor din vectorul "v" impreuna cu valorile
 * de la acestea.
 * Parcurgeti adresele, pe rand, din octet in octet,
 * din 2 in 2 octeti si apoi din 4 in 4.
 */

int main() {
    int v[] = {0xCAFEBABE, 0xDEADBEEF, 0x0B00B135, 0xBAADF00D, 0xDEADC0DE};

    printf("adresele elementelor si valorile");

    for(int i = 0; i < 5; i++) {
        printf("%d -> %p\n", v[i], &v[i]);
    }



    unsigned char *char_ptr = (char *)(&v);

    printf("din 1 in 1\n");

    for(int i = 1; i <= 20; i++) {
	    printf("%p -> 0x%x\n", char_ptr, *char_ptr);
    	char_ptr = char_ptr + 1;
    }


    printf("din 2 in 2\n");

    char_ptr = (char *)(&v);

    for(int i = 1; i <= 10; i++) {
	    printf("%p -> 0x%x\n", char_ptr, *char_ptr);
    	char_ptr = char_ptr + 2;
    }


    printf("din 4 in 4\n");
    
    char_ptr = (char *)(&v);

    for(int i = 1; i <= 5; i++) {
	    printf("%p -> 0x%x\n", char_ptr, *char_ptr);
    	char_ptr = char_ptr + 4;
    }

    return 0;
}
