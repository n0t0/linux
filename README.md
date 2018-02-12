# linux
lpic-2 notes 

# Chapter 1 

## Linux Boot Process 
 
$ dmesg --> kernel messages copied to *kernel buffer ring* /var/log/boot.log

## Firmware 

- BIOS --> MBR --> bootloader points to the actually OS kernel --> can point to different bootloader
- UEFI --> ESP --> bootloader can be any size and more than one (/boot/efi/

## Linux Bootloaders

- LILO
- GRUB (Legacy)
- GRUB2
