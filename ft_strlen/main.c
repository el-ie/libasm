#include <stdio.h>

extern int ft_strlen(char * str);

int main(int argc, char **argv)
{
	if (argc != 2)
	{
		printf("Enter only one word to test the function\n");
		return 1;
	}

	int nb = ft_strlen(argv[1]);
	printf("[%s] contains [%d] characters\n", argv[1], nb);

	return 0;
}
