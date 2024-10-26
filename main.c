#include <stddef.h>
#include <stdio.h>

extern unsigned int ft_strlen(char *str);
extern void ft_write(char *str);
extern int ft_strcmp(const char *s1, const char *s2);
extern char *ft_strcpy(char *dest, const char *src);
extern ssize_t ft_read(int fildes, void *buf, size_t nbyte);
extern char *ft_strdup(const char *s);


int main(void)
{
	/* strlen */
	// unsigned int len = ft_strlen("hello");
	// unsigned int len = 10;
	// printf("len: %u\n", len);

	/* write */
	// ft_write("string\n");

	/* strcmp */
	// int result;
	// result = ft_strcmp("abce", "abcd");
	// printf("res: %i\n", result);

	/* strcpy */
	// char dest[16];
	// char src[] = "source";
	// char *ret_ptr;
	// ret_ptr = ft_strcpy(dest, src);
	// printf("strcpy: b: %u, dest: %s\n", ret_ptr == dest, dest);

	/* read */
	// int len = 0;
	// char buff[20];
	// buff[10] = 0;
	// printf("write something short:\n");

	// // run the function
	// len = ft_read(0, buff, 10);
	// printf("len: %i, read: %s\n", len, buff);

	/* strdup */
	char *dup = ft_strdup("duplicate");
	printf("dup: %s\n", dup);

	return 0;
}