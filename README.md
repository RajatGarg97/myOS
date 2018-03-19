# myOS

Hola Coders,

This is a very basic Operating System created by me while going through a tutorial. This is the most simplest of operating systems
one can create to get the insights of the internal processes of an OS. 
It has its own kernel, linker & loader, but to boot it makes use of the GRUB bootloader.

To run this OS do the following:
1) Clone this repository
2) Open CLI and go into the myOS directory.
3) Type: make loader.o
4) Type: make kernel.o
5) Type: make mykernel.bin
6) Type: make install

Please make the following changes in the grub.cfg file of your OS to boot with myOS:

To open grub.cfg file

Type: vi /boot/grub/grub.cfg

https://raw.githubusercontent.com/RajatGarg97/myOS/master/changes-in-grubcfg.png

After making the changes as shown above, you might get a warning as grub.cfg is a read-only file.

To overcome that, press ESC to come out of INSERT mode and type :w !sudo tee %

You will be prompted to enter your password.

After doing so, press ENTER and type :q! to come out of the grub.cfg file.

!!REBOOT YOUR PC & SEE THE MAGIC!!

Note: I have tried this on Ubuntu 16.04 LTS and Linux Mint 17 only.
