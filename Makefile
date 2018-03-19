
#Parameters for a 32 bit OS
GPPPARAMS = -m32 -fno-use-cxa-atexit -nostdlib -fno-builtin -fno-rtti -fno-exceptions -fno-leading-underscore
ASPARAMS = --32
LDPARAMS = -melf_i386

#Object files of loader.s and kernel.cpp
objects = loader.o kernel.o  

#Conversion of .cpp file to .o file
%.o: %.cpp					
	g++ $(GPPPARAMS) -o $@ -c $<

#Conversion of .s file to .o file
%.o: %.s					
	as $(ASPARAMS) -o $@ $<

#Creation of mykernel.bin file by combining object files 
mykernel.bin: linker.ld $(objects)		
	ld $(LDPARAMS) -T $< -o $@ $(objects)

#Installation of mykernel.bin
install: mykernel.bin
	sudo cp $< /boot/mykernel.bin