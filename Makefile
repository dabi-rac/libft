# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dabi-rac <dabi-rac@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/23 18:11:16 by dabi-rac          #+#    #+#              #
#    Updated: 2023/02/10 14:52:25 by dabi-rac         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror

NAME = libft.a

SRCS = ft_atoi.c \
	  ft_bzero.c \
	  ft_calloc.c \
	  ft_isalnum.c \
	  ft_isalpha.c \
	  ft_isascii.c \
	  ft_isdigit.c \
	  ft_isprint.c \
	  ft_itoa.c \
	  ft_lstadd_back.c \
	  ft_lstadd_front.c \
	  ft_lstlast.c \
	  ft_lstnew.c \
	  ft_lstsize.c \
	  ft_lstdelone.c \
	  ft_lstclear.c \
	  ft_lstiter.c \
	  ft_lstmap.c \
	  ft_memchr.c \
	  ft_memcmp.c \
	  ft_memcpy.c \
	  ft_memmove.c \
	  ft_memset.c \
	  ft_putchar_fd.c \
	  ft_putnbr_fd.c \
	  ft_putstr_fd.c \
	  ft_putendl_fd.c \
	  ft_strchr.c \
	  ft_striteri.c \
	  ft_strjoin.c \
	  ft_strlcat.c \
	  ft_strlcpy.c \
	  ft_strlen.c \
	  ft_strmapi.c \
	  ft_strncmp.c \
	  ft_strdup.c \
	  ft_strnstr.c \
	  ft_strrchr.c \
	  ft_split.c \
	  ft_substr.c \
	  ft_strtrim.c \
	  ft_tolower.c \
	  ft_toupper.c \

BONUS = ./ft_lstadd_back.c \
		./ft_lstadd_front.c \
		./ft_lstclear.c \
		./ft_lstdelone.c \
		./ft_lstiter.c \
		./ft_lstlast.c \
		./ft_lstmap.c \
		./ft_lstnew.c \
		./ft_lstsize.c

OBJ = $(SRCS:.c=.o)

OBJB = $(BONUS:.c=.o)

%.o: %.c
	@gcc $(CFLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@echo "$(NAME) created"
	@ranlib $(NAME)
	@echo "$(NAME) indexed"

bonus: ${NAME} ${OBJS}
	ar rcs ${NAME} ${OBJB}

clean:
	@rm -f $(OBJ)
	@echo "OBJ deleted"

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) deleted"

re: fclean all

.PHONY: all clean fclean re
