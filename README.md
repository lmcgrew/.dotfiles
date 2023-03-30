#My Dot files
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## MAKEFILE description
Starting from the Makefile. Its job is very simple. It has the ability to call two targets.
The targets are “linux” and “clean”.
If the “linux” target or just make is called/run it must first run “clean” as a prerequisite, it would then run the file linux.sh script.
In the “clean” target it would only ever just run the cleanup.sh script.
## The cleanup.sh script
Helps to create a blank slate for the “linux.sh” script to create whatever it needs to.
If there is a .vimrc file it will remove it by force. This ensures it is removed if it is there or it will not throw an error message if it is not there at all.
It utilizes the ‘sed’ command to search for the line ‘source ~./dotfiles/bashrc_custom’, then if the line exists in the .bashrc file it will replace it with nothing essentially removing it.
The like before it will forcibly remove the .TRASH directory if it exits and bypass any error messages.
## The linux.sh script
This script first needs to check the operating system it is running on. It must be linux otherwise the script will not continue and it will exit.
If the system is linux then it will first create a .TRASH directory, only if it does not already exist.
The next step renames the .vimrc file to .bup_vimrc and lets the user know that it was completed by appending a message to the output file named ‘linuxsetup.log’ created in the current directory that the Makefile is in. 
Since this system changed the .vimrc it then creates a new one. It pulls from the vimrc file in the repository by copying it to a file named .vimrc in the user’s home directory. 
It then adds the message ‘source ~./dotfiles/bashrc_custom’ onto the last line of the .bashrc file.
This script has now set up the user’s linux bash in a certain way.
## The bashrc_custom file
The bashrc_custom looks for executables, it creates six aliases to use, finally it creates two functions.
## The new vimrc file
The new vimrc file sets up vim for the user.
## The .gitignore file
 This tells git to ignore certain files when pushing to GitHub. It will ignore .DS_Store and linuxsetup.log (as that should be specific for each user).
