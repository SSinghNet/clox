clox: *.c *.h
	gcc *.c -g -Wall -Werror -fsanitize=address,undefined -o clox