# Compiler and linker
CC = i686-elf-gcc
LD = i686-elf-ld

# Compiler flags:
# -m32: 32-bit mode
# -ffreestanding: no standard library
# -O2: optimization
# -Wall: show all warnings
CFLAGS = -m32 -ffreestanding -O2 -Wall

# Linker flags
LDFLAGS = -Ttext 0x1000 --oformat elf32-i386

# Our target kernel
TARGET = kernel.elf

# All object files
OBJS = src/boot.o src/kernel.o

# Default rule — run when you type just "make"
all: $(TARGET)

# Rule to link the kernel
$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $(TARGET) $(OBJS)

# Rule to compile C files to .o
src/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to assemble .s files to .o
src/%.o: src/%.s
	$(CC) -m32 -c $< -o $@

# Clean build files
clean:
	rm -f $(TARGET) src/*.o
