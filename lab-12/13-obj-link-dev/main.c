extern void print_quantity(void);
extern int qty;
extern void print_price(void);
extern void set_price(int);

int main(void)
{
	qty = 42;
	print_quantity();
	set_price(21);
	print_price();
	/*
	 * TODO: Make it so you print:
	 *    price is 21
	 *    quantity is 42
	 * without directly calling a printing function.
	 */
	return 0;
}
