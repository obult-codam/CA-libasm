NAME	= libasm.a
FILES	= ft_strlen.s ft_strcmp.s ft_write.s ft_strcpy.s ft_read.s ft_strdup.s
SRCS	= $(addprefix src/arm/, ${FILES})
OBJS	= ${SRCS:.s=.o}
TEST_SRCS = main.c
TEST_OBJS = ${TEST_SRCS:.c=.o}
CC = gcc
ASM = as -g
RM = rm -f
HEADER = -I
CFLAGS = -Wall -Wextra -Werror -g
LIB = ar -rsc
TEST = tests

all:		${NAME}

.s.o:
				${ASM} $< -o ${<:.s=.o}

.c.o:
				${CC} -c ${CFLAGS} $< -o ${<:.c=.o}
clean:
				${RM} ${OBJS} ${TEST_OBJS}

fclean:		clean
				${RM} ${NAME} ${TEST}

re:			fclean all

ret:		re tests

${NAME}:	${OBJS}
				${LIB} $@ $^

${TEST}:	${NAME} ${TEST_OBJS}
				${CC} ${TEST_OBJS} ${NAME} ${CFLAGS} -o $@

.PHONY: all clean fclean re bonus
