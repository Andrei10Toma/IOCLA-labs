extern unsigned int puts(char *);

static void hi(void)
{
	puts("Hi!");
}

static void bye(void)
{
	puts("Bye!");
}

int main(void)
{
	hi();
	bye();
}
