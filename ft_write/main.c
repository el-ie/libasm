#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <stdio.h>

extern ssize_t ft_write(int fildes, const void *buf, size_t nbyte);

int main(int argc, char **argv)
{
	if (argc != 3)
	{
		dprintf(2, "Enter two arguments : filename and string to write\n");
		return -1;
	}

	int fd = open(argv[1], O_CREAT | O_APPEND | O_WRONLY, 0644);

	int ret = ft_write(fd, argv[2], strlen(argv[2]));

	printf("returned value = %d\n", ret);
}
