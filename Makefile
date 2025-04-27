# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pbongiov <pbongiov@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/10 19:19:37 by pbongiov          #+#    #+#              #
#    Updated: 2025/04/27 14:11:53 by pbongiov         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

AR = ar rcs

RM = rm -f

SRCS_FILES = ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
			 ft_memset.c ft_strlen.c ft_tolower.c ft_toupper.c ft_bzero.c\
			 ft_memcpy.c  ft_strlcpy.c ft_strlcat.c ft_strchr.c\
			 ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c\
			 ft_atoi.c ft_strdup.c ft_calloc.c ft_memmove.c ft_substr.c ft_strjoin.c\
			 ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c\
			 ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\

OBJS = $(SRCS_FILES:.c=.o)

BONUS_SRCS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
			 ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c\
			 ft_lstmap.c\

BONUS_OBJS = $(BONUS_SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME)
	$(RM) -rf bonus

re: fclean all

.PHONY: all clean fclean re 

bonus: $(BONUS_OBJS) $(NAME)
	$(AR) $(NAME) $(OBJS) $(BONUS_OBJS)
	touch bonus