#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern char *ft_strcpy(char *dest, const char *src);

int main(int argc, char **argv)
{
	if (argc != 2)
	{
		printf("Enter only one word to test the function\n");
		return 1;
	}

	char *src = strdup(argv[1]);
	char *dest = malloc(sizeof(char) * (strlen(src) + 1));

	char *res = ft_strcpy(dest, src);

	printf("dest = %s\n", dest);
	printf("res = %s\n", res);
	printf("src = %s\n", src);

	free(src);
	free(dest);

	return 0;
}
