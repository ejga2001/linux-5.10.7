#!/bin/bash

qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -m 2G \
    -kernel arch/riscv/boot/Image \
    -bios ../cva-sdk/opensbi/build/platform/generic/firmware/fw_payload.bin \
    -initrd ./../cva-sdk/buildroot/output/images/rootfs.cpio \
    -append "console=ttyS0 root=/dev/ram0"  \

