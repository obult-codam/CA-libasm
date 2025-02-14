#pragma once
#include <stddef.h>
#include <stdio.h>

unsigned int ft_strlen(char *str);
void ft_write(int fd, char *str, size_t len);
int ft_strcmp(const char *s1, const char *s2);
char *ft_strcpy(char *dest, const char *src);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
char *ft_strdup(const char *s);
