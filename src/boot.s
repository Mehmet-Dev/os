.section .multiboot
    .long 0x1BADB002       # magic number for GRUB/multiboot
    .long 0x0              # flags
    .long -(0x1BADB002)    # checksum

.section .text
.global _start
_start:
    call kernel_main
hang:
    jmp hang
