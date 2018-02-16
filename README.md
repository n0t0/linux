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
- GRUB (Legacy) /boot/grub.conf
- GRUB2 --> /boot/grub2/grub.cfg

$ grub-install ('hd0')--> installing GRUB in MBR

- from GRUB menu press E --> edit boot options
- from GRUB menu press B --> to boot
- from GRUB menu press C --> enter interactive shell mode

- /etc/default/grub --> global commands

$ grub-mkconfig --> rebuild the main installation file

## Alternative Bootloaders

- Systemd-boot
- U-Boot
- Syslinux project
* SYSLINUX - Microsoft FAT (pop for USB)
* EXTLINUX - ext2, ext3, ext4, or btrfs
* ISOLINUX - LiveCD or LiveDVD
* PXELINUX - booting from network server
* MEMDISK - boot older DOS

## Process Initialization

- /sbin/init
- /etc/init
