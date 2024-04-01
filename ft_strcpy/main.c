#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern char *ft_strcpy(char *dest, const char *src);

int main(int argc, char **argv)
{
	//if (argc != 3)
	//{
	//	printf("Enter only two word to test the function\n");
	//	return 1;
	//}

	char *src = strdup("salut");
	char *dest = malloc(sizeof(char) * (strlen(src) + 1));

	char *res = ft_strcpy(dest, src);

	return 0;
}
