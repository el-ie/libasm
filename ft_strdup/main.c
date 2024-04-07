#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern char *ft_strdup(const char *s);

int	main(void)
{
	//malloc(1);
	char * str;
	str = ft_strdup("ABCD");
	printf("str [%s]\n", str);
	free(str);
	return 0;
}
