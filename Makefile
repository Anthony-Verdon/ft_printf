SRCS	= srcs/ft_printf.c \
		  srcs/ft_putnbr_base.c \
		  srcs/ft_putchar.c \
		  srcs/ft_putstr.c \
		  srcs/ft_strlen.c \
		  srcs/ft_iterative_power.c \
		  srcs/ft_strchr.c

OBJS 	= ${SRCS:.c=.o}

NAME 	= libftprintf.a

CC	 	= gcc

RM		= rm -f

CFLAGS 	= -Wall -Werror -Wextra -g

all: 		${NAME}

.c.o:		${OBJS}
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}
	
${NAME}:	${OBJS}
			ar rc ${NAME} ${OBJS}
			ranlib ${NAME}

clean: 
			${RM} ${OBJS} 

fclean: 	clean
			${RM} ${NAME}

re: 		fclean all

.PHONY: 	all clean fclean re
