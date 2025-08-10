# os
Simple operating system

## 🧱 Chapter 0: Project Setup

| ⬜ Set up a cross-compiler for x86 (i686-elf-gcc)              |
| ⬜ Configure a build system with Make/CMake                    |
| ⬜ Use QEMU for emulation and testing                         |
| ⬜ Create basic disk image generation                         |

## ⚙️ Chapter 1: Custom Bootloader

| ⬜ Write a 512-byte boot sector in pure assembly              |
| ⬜ Load second-stage code or kernel from disk                 |
| ⬜ Switch from 16-bit real mode to 32-bit protected mode      |
| ⬜ Set up Global Descriptor Table (GDT)                       |
| ⬜ Jump to C kernel entry point                               |

## 💬 Chapter 2: Kernel Basics

| ⬜ Write `kernel_main()` in C                                 |
| ⬜ Print text to screen using VGA text buffer                 |
| ⬜ Set up an infinite loop to prevent returning               |

## 🎹 Chapter 3: Keyboard Input

| ⬜ Set up Interrupt Descriptor Table (IDT)                    |
| ⬜ Enable and handle IRQs                                     |
| ⬜ Handle keyboard interrupts (IRQ1)                          |
| ⬜ Read scan codes from PS/2 controller                       |
| ⬜ Convert scan codes to ASCII                                |

## 🧠 Chapter 4: Physical Memory Management

| ⬜ Parse BIOS memory map                                      |
| ⬜ Implement bitmap-based physical memory allocator           |
| ⬜ Build basic kernel heap (malloc/free)                      |

## 🧩 Chapter 5: Paging & Virtual Memory

| ⬜ Enable paging in CR0                                       |
| ⬜ Build and load initial page directory + tables             |
| ⬜ Identity-map kernel space                                  |
| ⬜ Handle basic page faults                                   |

## 💻 Chapter 6: Terminal Interface

| ⬜ Implement a basic command-line shell                       |
| ⬜ Support input editing, backspace, and history (optional)   |
| ⬜ Built-in commands: `help`, `clear`, `echo`, `mem`          |

## 📁 Chapter 7: File System (Read)

| ⬜ Implement FAT12 or FAT32 reader                            |
| ⬜ Read files from disk image                                 |
| ⬜ Add file APIs: `open()`, `read()`, `close()`               |

## 🔁 Chapter 8: Multitasking

| ⬜ Define Process Control Block (PCB) structure               |
| ⬜ Implement context switching                                |
| ⬜ Set up basic scheduler (round-robin)                       |

## 🔒 Chapter 9: User Mode & Syscalls

| ⬜ Switch to user mode (ring 3)                               |
| ⬜ Implement syscall mechanism (e.g., `int 0x80`)             |
| ⬜ Add user-space memory protection                           |
| ⬜ Load and run user programs                                 |

## 🖨️ Chapter 10: Drivers (Stage 1)

| ⬜ PS/2 mouse support                                         |
| ⬜ PIT (Programmable Interval Timer) setup                    |
| ⬜ ATA PIO (hard disk) read support                           |

## ✍️ Chapter 11: File System (Write)

| ⬜ Add support for file creation and writing                  |
| ⬜ Implement basic directory operations                       |
| ⬜ Add `ls`, `touch`, `cat`, and `rm` commands                |

## ⚙️ Chapter 12: Executable Loading

| ⬜ Load and parse raw binary or ELF format                    |
| ⬜ Allocate memory and stack                                  |
| ⬜ Jump to entry point in user mode                           |

## 🖼️ Chapter 13: Graphical Mode (Optional)

| ⬜ Switch to linear framebuffer (VBE/VESA)                    |
| ⬜ Draw pixels and basic GUI widgets                          |
| ⬜ Add mouse cursor and window system                         |

## 🌐 Chapter 14: Networking (Optional)

| ⬜ Detect and initialize PCI network card (e.g., RTL8139)     |
| ⬜ Send and receive raw packets                               |
| ⬜ Implement basic ARP/IP/UDP/TCP stack                       |
| ⬜ Add ping or basic HTTP GET                                 |

## ✅ Chapter 15: Polish & Packaging

| ⬜ Add installer or disk partitioning tool                    |
| ⬜ Create bootable ISO or USB image                           |
| ⬜ Write documentation and user manual                        |
| ⬜ Polish UI/UX and shell features                            |
