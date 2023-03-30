#!/bin/bash

#Remove .vimrc file from the homedirectory
rm -f ~/.vimrc

#Remove the line 'source ~/.dotfiles/bashrc_custom' from the .bashrc file
sed -i 's/source ~\/\.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc

#Remove .TRASH directorty from inside home directory
rm -rf ~/.TRASH
