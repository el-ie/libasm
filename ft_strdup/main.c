#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern char *ft_strdup(const char *s);

int	main(int argc, char **argv)
{
	//char *src = strdup();
	(void)argc;(void)argv;

	char *str = ft_strdup("test");
	//printf("str = [%s]\n", str);
	free(str);
	return 0;

	//char *str = ft_strdup(argv[1]);
	//
	//if (!str)
	//{
	//	dprintf(2, "Allocation failed\n");
	//	perror("perror");
	//	return -1;
	//}
	//
	//printf("str = [%s]\n", str);
	//free(str);
	//return 0;
}
