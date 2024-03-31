#include <stdio.h>
#include <string.h>

extern size_t ft_strlen(const char * s);

int main(int argc, char **argv)
{
	// tests
	//char *str = NULL; // protected
	//char *str; //conditional jump or move depends on uninitialised value (correctable?)
	//ft_strlen(str);
	//return 0;

	if (argc != 2)
	{
		printf("Enter only one word to test the function\n");
		return 1;
	}

	int nb = ft_strlen(argv[1]);
	printf("[%s] contains [%d] characters\n", argv[1], nb);

	return 0;
}
