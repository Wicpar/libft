# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makeMakefile.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fnieto <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/04 01:19:47 by fnieto            #+#    #+#              #
#    Updated: 2015/12/04 01:49:59 by fnieto           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

file="Makefile"

printf "# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fnieto <fnieto@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/19 14:09:58 by apachkof          #+#    #+#              #
#    Updated: 2015/12/03 23:05:57 by fnieto           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

CC=gcc

CFLAGS=-Wall -Wextra -Werror -O3

RM=rm -f

LDFLAGS=-L.

LDLIBS=-lft

HDDIRS=-I includes/

SRC=" > $file

ls ft_*.c | tr "\n" " "| rev | cut -c 2- | rev >> $file

echo "
OBJ=\$(SRC:.c=.o)

\$(NAME): includes/libft.h
		\$(CC) \$(CFLAGS) -c \$(SRC) \$(HDDIRS)
		ar rc \$(NAME) \$(OBJ)
		ranlib \$(NAME)

all: \$(NAME)

clean:
		\$(RM) \$(OBJ)

fclean: clean
		\$(RM) \$(NAME)

re: fclean all

.PHONY: clean fclean" >> $file
