#!/bin/bash

read -p "Do yo want to check if the required tools are installed ? Tap 'yes' to accept or any key to decline : " isTools

if [ $isTools == "yes" -o $isTools == "y" ]; then
	chmod --version
	gcc --version
fi

read -p "Please enter the name of your file ? : " txt

read -p "What action do you want to do on the file ? Select :/n
- 0 : permission - 1 : compile - 2 : execute - 3 : all " choice

if [ $choice == 0 ]; then
	sudo chmod u+x $txt.c
elif [ $choice == 1 ]; then
	gcc -Wall $txt.c -o $txt.out -lm
elif [ $choice == 2 ]; then
	./$txt.out
elif [ $choice == 3 ]; then
	sudo chmod u+x $txt.c
	gcc -Wall $txt.c -o $txt.out -lm
	./$txt.out
else
	"Wrong key"
fi
