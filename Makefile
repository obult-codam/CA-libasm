NAME	= libasm.a
SRCS	= src/ft_strlen.s src/ft_write.s src/ft_strcmp.s src/ft_strcpy.s src/ft_read.s src/ft_strdup.s
OBJS	= ${SRCS:.s=.o}
TEST_SRCS = main.c
TEST_OBJS = ${TEST_SRCS:.c=.o}
CC		= gcc -target x86_64-macos
ASM		= nasm -f macho64 -gdwarf
RM		= rm -f
HEADER	= -I
CFLAGS	= -Wall -Werror -Wextra -g
LIB		= ar -rsc
TEST 	= tests


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
				${CC} ${TEST_OBJS} ${NAME} ${CFLAGS} -o $@ ${LDFLAGS}

.PHONY: all clean fclean re bonus