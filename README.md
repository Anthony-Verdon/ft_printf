# ft_printf

## because ft_putnbr and ft_putstr isn't enough

This project is part of the first circle of projects of the 42 common core. The goal is reproduce the behaviour of the function `printf` (included in `stdio.h`). It also  make me learn about variadic functions (functions that can take a variable number of arguments). You will find the subject of the project into the repository. My grade : 100/100.

## How to use it

1. Clone it `git clone git@github.com:AnthonyVerdon-42Projects/ft_printf.git`.
2. Compile it `make`.
3. In your project, compile with `-Lft_printf -lftprintf` and include `ft_printf.h` in your file. If you want to put them in another directory, you must compile with `-L{path}/ft_printf` and include `{path}/ft_printf.h`.

This function handle :
- `%c` : Prints a single character.
- `%s` : Prints a string (as defined by the common C convention).
- `%p` : The void * pointer argument has to be printed in hexadecimal format
- `%d` : Prints a decimal (base 10) number.
- `%i` : Prints an integer in base 10
- `%u` : Prints an unsigned decimal (base 10) number
- `%x` : Prints a number in hexadecimal (base 16) lowercase format.
- `%X` : Prints a number in hexadecimal (base 16) uppercase format.
- `%%` : Prints a percent sign.

## Examples of usage

```
printf("Hello %s !", Anthony);
printf("What is %d + %d ?", 5, 10);
printf("number %i in base 10 is equal to %x in base 16. Is corresponding ascii character is %c and it is stored at %p", a, a, a, &a) //a is an int
...
```
## Ideas of modification

A bonus of this project was to handle differents types of flags and their combination. Two variations of this project are `dprintf` (which has another mandatory argument, which is the fd of ouput) and `sprintf` (which has two others mandatory arguments, which are a string and it size to write in it).

## Find a bug ?

If you find an undefined behaviour (crash, leaks, ...), please submit an issue or contact me
