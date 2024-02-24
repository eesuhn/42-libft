NAME := libft.a

SRCS := $(wildcard *.c)
SRCS := $(filter-out %_bonus.c, $(SRCS))

SRCS_BNS := $(wildcard *_bonus.c)

OBJS := $(SRCS:.c=.o)

OBJS_BNS := $(SRCS_BNS:.c=.o)

FLAGS := -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

bonus: $(OBJS) $(OBJS_BNS)
	ar rcs $(NAME) $(OBJS) $(OBJS_BNS)

%.o: %.c
	cc $(FLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(OBJS_BNS)

fclean: clean
	rm -f $(NAME)

re: fclean all
