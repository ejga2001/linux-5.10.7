riscv64-unknown-elf-as -o firmware.o firmware.s
riscv64-unknown-elf-ld -Ttext=0x80000000 -o firmware.elf firmware.o
cd ..