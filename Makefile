CC = avr-gcc

polaca:main.c 
	$(CC) -Wall -Os -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=1000000UL -MMD -MP -MF"main.d" -MT"main.d" -c -o "main.o"
assambler: main.c
	$(CC) -S main.c -fverbose-asm -mmcu=atmega32 -DF_CPU=1000000UL -o main.s 