# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pbongiov <pbongiov@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/10 19:19:37 by pbongiov          #+#    #+#              #
#    Updated: 2025/04/14 19:58:51 by pbongiov         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
SRCS_FILES = ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
			 ft_memset.c ft_strlen.c ft_tolower.c ft_toupper.c ft_bzero.c\
			 ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_strchr.c\
			 ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c\
			 ft_atoi.c ft_strdup.c ft_calloc.c ft_memmove.c ft_substr.c ft_strjoin.c\
			 ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c\

OBJS = $(SRCS_FILES:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: srcs/%.c
	$(CC) $(CFLAGS)-c $(SRCS_FILES)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re 