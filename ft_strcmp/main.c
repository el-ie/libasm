#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int ft_strcmp(const char *s1, const char *s2);

int main(int argc, char **argv)
{
	if (argc != 3)
	{
		printf("Enter two words to test the function\n");
		return 1;
	}

	char *s1 = strdup(argv[1]);
	char *s2 = strdup(argv[2]);

	printf("[%s] - ", s1);
	printf("[%s]\n", s2);

	int ret = ft_strcmp(s1, s2);
	printf("\n  [%d] ", ret);

	int ret2 = strcmp(s1, s2);
	printf(" [%d]\n", ret2);

	if (ret != ret2)
		printf("\n ERROR \n");

	free(s1);
	free(s2);

	return 0;
}
