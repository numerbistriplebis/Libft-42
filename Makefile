# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dbendaou <dbendaou@42.fr>                   +#+  +:+      +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/24 14:57:19 by dbendaou          #+#    #+#              #
#    Updated: 2015/12/04 17:28:49 by dbendaou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	libft.a

SRC= ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_memalloc.c ft_memdel.c ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_islower.c ft_isupper.c ft_isspace.c ft_toupper.c ft_tolower.c ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_lstlen.c ft_tablen.c ft_intlen.c ft_abs.c

FLAG =	-Wall -Wextra -Werror

INCLUDES = -I ./libft.h

OBJ= $(SRC:.c=.o)

$(NAME): libft.h
		gcc $(FLAG) -c $(SRC) $(INCLUDES)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

all : $(NAME)

clean :
	rm -f $(OBJ)

fclean : clean
	rm -rf $(NAME)

re :	fclean all