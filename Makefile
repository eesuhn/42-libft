NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror -g

SRCDIR = srcs/
OBJDIR = objs/
SRC_FILES = \
		ft_isalpha \
 		ft_isdigit \
 		ft_isalnum \
 		ft_isascii \
 		ft_isprint \
		ft_strlen \
		ft_memset \
		ft_bzero \
		ft_memcpy \
		ft_memmove \
		ft_strlcpy \
		ft_strlcat \
		ft_toupper \
		ft_tolower \
		ft_strchr \
		ft_strrchr \
		ft_strncmp \
		ft_memchr \
		ft_memcmp \
		ft_strnstr \
		ft_atoi \
		ft_calloc \
		ft_strdup \
		ft_substr \
		ft_strjoin \
		ft_strtrim \
		ft_split \
		ft_itoa \
		ft_strmapi \
		ft_striteri \
		ft_putchar_fd \
		ft_putstr_fd \
		ft_putendl_fd \
		ft_putnbr_fd \
		ft_lstnew \
		ft_lstadd_front \
		ft_lstsize \
		ft_lstlast \
		ft_lstadd_back \
		ft_lstdelone \
		ft_lstclear \
		ft_lstiter \
		ft_lstmap \
		get_next_line_utils \
		get_next_line \
		ft_printf \
		ft_switch \
		ft_putchar \
		ft_print_char \
		ft_putstr \
		ft_print_str \
		ft_itoa_base \
		ft_print_ptr \
		ft_print_dec_int \
		ft_print_u_int \
		ft_print_hex \

SRCS = $(addprefix $(SRCDIR), $(SRC_FILES:=.c))
OBJS = $(addprefix $(OBJDIR), $(notdir $(SRCS:.c=.o)))

all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)

$(OBJDIR)%.o: $(SRCDIR)%.c | $(OBJDIR)
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR):
	@mkdir -p $(OBJDIR)

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
