#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

extern ssize_t ft_read(int fd, void *buf, size_t count);

int main(int argc, char **argv)
{
	if (argc != 3)
	{
		dprintf(2, "Enter two arguments : filename and number of character to read\n");
		return -1;
	}
	for (int i = 0; argv[2][i]; ++i)
	{
		if (argv[2][i] < '0' && argv[2][i] > '9')
		{
			dprintf(2, "The second argument has to be a number\n");
			return -1;
		}
	}

	int fd = open(argv[1], O_RDONLY);

	int len = atoi(argv[2]);

	char *str = malloc(sizeof(char) * (len + 1));
	if (!str)
		return -1;

	int ret = ft_read(fd, str, len);
	if (ret < 0)
	{
		perror("perror");
		free(str);
		return -1;
	}

	printf("str = [%s]\n", str);
	printf("returned value = %d\n", ret);

	free(str);
}
