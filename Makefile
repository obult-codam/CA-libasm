NAME	= libasm.a
FILES	= ft_strlen.s ft_write.s ft_strcmp.s ft_strcpy.s ft_read.s ft_strdup.s
SRCS	= $(addprefix src/x86_64/, ${FILES})
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

arm:
	${MAKE} -f arm.mk tests

.s.o:
				${ASM} $< -o ${<:.s=.o}

.c.o:
				${CC} -c ${CFLAGS} $< -o ${<:.c=.o}
clean:
				${RM} ${OBJS} ${TEST_OBJS}

fclean:		clean
				${RM} ${NAME} ${TEST}
				${MAKE} -f arm.mk fclean

re:			fclean all

ret:		re tests

${NAME}:	${OBJS}
				${LIB} $@ $^

${TEST}:	${NAME} ${TEST_OBJS}
				${CC} ${TEST_OBJS} ${NAME} ${CFLAGS} -o $@ ${LDFLAGS}

.PHONY: all clean fclean re bonus