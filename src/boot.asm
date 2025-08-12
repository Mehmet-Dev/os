; boot.asm - Simple boot sector example

[org 0x7c00]          ; BIOS loads boot sector here in memory (0x7C00)

start:
    mov si, message   ; Load address of the message into SI register

print_loop:
    lodsb             ; Load byte at [SI] into AL and increment SI
    cmp al, 0         ; Check if byte is 0 (end of string)
    je done_printing
    mov ah, 0x0e      ; BIOS teletype function (print character)
    int 0x10          ; BIOS video interrupt
    jmp print_loop

done_printing:
    cli               ; Disable interrupts
    hlt               ; Halt the CPU

; Message to print
message db "Boot sector loaded successfully!", 0

; Pad the rest with zeros so total size = 510 bytes
times 510 - ($ - $$) db 0

; Boot signature (magic number) for BIOS
dw 0xAA55
