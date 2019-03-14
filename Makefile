NAME	=	libftprintf.a

CC	= gcc

CFLAGS	=	-Wall	-Wextra	-Werror
HEADERS	+=	header/ libft/
CFLAGS += $(foreach d, $(HEADERS), -I$d)
LIBFT	=	/libft

SRCS	=	src/ft_printf.c \
			src/arg_processing.c \
			src/specifier_processing.c \
			src/extenctions/num_precision_len.c \
			src/extenctions/numstr_len.c \
			src/extenctions/print_space_or_zero.c \
			src/extenctions/sign_force_processing.c \
			src/extenctions/length_cast_processing.c \
			src/extenctions/print_num_base.c \
			src/the_handler/percent_handler.c \
			src/the_handler/char_handler.c \
			src/the_handler/hex_handler.c \
			src/the_handler/int_handler.c \
			src/the_handler/octal_handler.c \
			src/the_handler/ptr_handler.c \
			src/the_handler/str_handler.c \
			src/the_handler/uint_handler.c \
			src/the_handler/unsigned_handler.c \
			src/the_handler/wchar_handler.c \
			src/the_handler/wstr_handler.c\
			src/the_handler/null_handler.c 

LIBFT_FUNCS = libft/ft_memset.c libft/ft_bzero.c libft/ft_memcpy.c \
	   libft/ft_memccpy.c libft/ft_memmove.c libft/ft_memchr.c libft/ft_memcmp.c \
	   libft/ft_strlen.c libft/ft_strnlen.c	libft/ft_strdup.c \
	   libft/ft_strcpy.c libft/ft_strncpy.c libft/ft_strcat.c \
	   libft/ft_strncat.c libft/ft_strlcat.c libft/ft_strchr.c \
	   libft/ft_strrchr.c libft/ft_strstr.c libft/ft_strnstr.c \
	   libft/ft_strcmp.c libft/ft_strncmp.c libft/ft_sqrt.c	\
	   libft/ft_atoi.c libft/ft_isalpha.c libft/ft_isdigit.c \
	   libft/ft_isalnum.c libft/ft_isascii.c libft/ft_isprint.c \
	   libft/ft_toupper.c libft/ft_tolower.c libft/ft_memalloc.c \
	   libft/ft_memdel.c libft/ft_strnew.c libft/ft_strdel.c \
	   libft/ft_strclr.c libft/ft_striter.c libft/ft_striteri.c \
	   libft/ft_strmap.c libft/ft_strmapi.c libft/ft_strequ.c \
	   libft/ft_strnequ.c libft/ft_strsub.c libft/ft_strjoin.c \
	   libft/ft_strtrim.c libft/ft_strsplit.c libft/ft_itoa.c \
	   libft/ft_itoa_base.c libft/ft_putchar.c libft/ft_putwchar.c	\
	   libft/ft_putstr.c libft/ft_putnstr.c	libft/ft_putendl.c \
	   libft/ft_putnbr.c libft/ft_putchar_fd.c libft/ft_putstr_fd.c \
	   libft/ft_putendl_fd.c libft/ft_putnbr_fd.c libft/ft_lstnew.c \
	   libft/ft_lstdelone.c libft/ft_lstdel.c libft/ft_lstadd.c \
	   libft/ft_lstiter.c	libft/ft_lstmap.c	libft/ft_numlen.c	\
	   libft/ft_lstcount.c libft/ft_lstrev.c libft/ft_strndup.c	\
	   libft/ft_strrev.c libft/ft_strclen.c

OBJS = $(patsubst src/%.c,obj/%.o,$(SRCS))
OBJS += $(patsubst libft/%.c, obj/libft/%.o,$(LIBFT_FUNCS))

all:	$(NAME)

$(OBJS): | obj

obj:
	@mkdir -p $@
	@mkdir -p $@/the_handler
	@mkdir -p $@/extenctions
	@mkdir -p $@/libft
obj/%.o: src/%.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@
obj/libft/%.o: libft/%.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@
$(NAME): $(OBJS)
	$(AR) -rcs $(NAME) $^
clean:
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
	rm -rf obj
	
re: fclean all
