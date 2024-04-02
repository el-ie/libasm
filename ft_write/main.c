#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>

extern ssize_t ft_write(int fildes, const void *buf, size_t nbyte);

int main(void)
{
	int fd = open("testfile", O_CREAT | O_APPEND | O_WRONLY, 0644);

	char *str = strdup("salut");
	ft_write(fd, str, strlen(str))
}
