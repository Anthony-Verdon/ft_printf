SRCS	= ft_printf.c \
		  ft_putnbr_base.c \
		  ft_putchar.c \
		  ft_putstr.c \
		  ft_strlen.c \
		  ft_iterative_power.c \
		  ft_strchr.c

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
