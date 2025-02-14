#include "libasm.h"
#include <stdio.h>
#include <errno.h>




int main(void)
{
	printf("errno address: %p\n", (void *)&errno);

	/* strlen */
	unsigned int len = ft_strlen("hell");
	printf("len: %u\n", len);

	/* write */
	printf("calling write\n");
	ft_write(1, "string\n", ft_strlen("string\n"));
	printf("write has been called\n");

	/* strcmp */
	int result;
	result = ft_strcmp("abce", "abcd");
	printf("res: %i\n", result);

	/* strcpy */
	char dest[16];
	char src[] = "source";
	char *ret_ptr;
	ret_ptr = ft_strcpy(dest, src);
	printf("strcpy: b: %u, dest: %s\n", ret_ptr == dest, dest);

	/* read */
	int sLen = 0;
	static char buff[20];
	printf("write something short:\n");

	// // run the function
	sLen = ft_read(0, buff, 10);
	printf("sLen: %i, read: %s", sLen, buff);

	/* Fail read for errno. */
	printf("return val = %lu\n", ft_read(-1, buff, 10));

	/* strdup */
	char *dup = ft_strdup("duplicate");
	printf("dup: %s\n", dup);

	return 0;
}