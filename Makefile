AS=i686-elf-as
CC=i686-elf-gcc

all:
	${AS} boot.s -o boot.o
	${CC} -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	${CC} -T linker.ld -o myOS.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
