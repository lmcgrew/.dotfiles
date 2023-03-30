#!/bin/bash

OSTYPE=$(uname)

#Checking if the operating system type is Linux
if [[ "$OSTYPE" != *"Linux"* ]];
then
	echo "Err NOT a Linux Operating System" >> linuxsetup.log
	exit
fi

#Create .TRASH directory in home directory if it does not already exist
mkdir -p ~/.TRASH

#Test if file .vimrc exits and if it does then it will change the name to .bup_vimrc
FILE=~/.vimrc
if [[ -f "$FILE" ]];
then
	mv ~/.vimrc ~/bup_vimrc
	echo "The .vimrc file's name was changed to .bup_vimrc" >> linuxsetup.log
fi

#Overwriting the contents of ~/.dotfiles/etc/vimrc to ~/.vimrc
cp ~/.dotfiles/etc/vimrc ~/.vimrc

#Append the statement 'source ~/.dotfiles/etc/bashrc_custom' to the end of the .bashrc file in ~
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
