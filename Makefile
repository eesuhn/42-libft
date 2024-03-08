NAME = libft.a

SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
		ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
		ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
		ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
		ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
		ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

SRCS_BNS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
			ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

# # ERROR : Update before submission
# SRCS := $(wildcard *.c)
# SRCS := $(filter-out %_bonus.c, $(SRCS))

# # ERROR : Update before submission
# SRCS_BNS := $(wildcard *_bonus.c)

OBJS = $(SRCS:.c=.o)

OBJS_BNS = $(SRCS_BNS:.c=.o)

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

bonus: $(OBJS) $(OBJS_BNS)
	ar rcs $(NAME) $(OBJS) $(OBJS_BNS)

%.o: %.c
	cc $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(OBJS_BNS)

# ERROR : Update before submission
fclean: clean
	rm -f $(NAME)
	rm -f libft.so

re: fclean all

# ERROR : Remove before submission
so:
	cc -nostartfiles -fPIC -shared -o libft.so $(OBJS) $(OBJS_BNS)

# ERROR : Update before submission
.PHONY: all clean fclean re bonus so
