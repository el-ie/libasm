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

	printf("s1 = [%s]\n", s1);
	printf("s2 = [%s]\n", s2);

	int ret = ft_strcmp(s1, s2);
	printf("return ft_strcmp = [%d]\n", ret);

	int ret2 = strcmp(s1, s2);
	printf("return true strcmp = [%d]\n", ret2);

	free(s1);
	free(s2);

	return 0;
}
