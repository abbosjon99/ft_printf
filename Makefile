# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akeldiya <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/19 21:58:46 by akeldiya          #+#    #+#              #
#    Updated: 2024/03/19 21:58:55 by akeldiya         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

FUNCTIONS = ft_printf.c ft_putch.c ft_putst.c ft_putdi.c ft_putu.c\
	ft_putxx.c ft_putp.c
OBJECTS = $(FUNCTIONS:.c=.o)

CC = clang
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

.c.o:
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}

$(NAME): $(OBJECTS)
	$(AR) $(NAME) $(OBJECTS)

all: $(NAME)

clean:
	$(RM) $(OBJECTS)

fclean: clean
	$(RM) $(NAME)

re: clean all

.PHONY:  all clean fclean re

