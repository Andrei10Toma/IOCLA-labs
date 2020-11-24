#include <stdio.h>

void rotate_left(unsigned int *number, int bits)
{
	/* TODO */
	int x = 31;
	while(!((1 << x) & (*number))) x--;
	if((31 - x) - bits > 0) {
		*number = *number << bits;
	}
	else {
		int rest = -(31 - bits - x);

		unsigned int masca = 0;
		for(int i = 0; i < rest; i++) {
			masca += (1 << (x - i));
		}
		masca = (masca >> x);
		*number = (*number << bits) + masca;
	}
}

void rotate_right(int *number, int bits)
{
	printf("%d %d\n", *number, bits);
	/* TODO */
}

int main()
{
	/* TODO: Test functions */
	unsigned int a = 2147483648;
	rotate_left(&a, 1);
	printf("%hhu\n", a);
	return 0;
}

