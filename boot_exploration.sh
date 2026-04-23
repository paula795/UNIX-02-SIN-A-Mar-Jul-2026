#They allow you to list all files and directories in the current location, including hidden files.
#short option
ls -a 
#They allow you to list all files and directories in the current location, including hidden files.
#long option
ls --all
# The command ls -l -a -h lists all files and directories on the system, including hidden ones. It displays detailed information such as permissions, owner, size, and modification date for each file. The `-h` option presents sizes in a more readable format, such as kilobytes or megabytes, instead of bytes.
ls -l -a -h
#The command ls -lah performs exactly the same function as the previous one, since it combines the -l, -a and -h options into a single abbreviated form.
ls -lah
#It allows you to create a directory whose name is -rf. When using the -, the information is not presented as options but as plain text.
mkdir -- -rf
#What it does is delete the created file
rmdir -- -rf
#The `ls --help` command is used to display the help for the ls command, which details all available options, their meaning, and how to use them.
ls --help
# The man ls command is used to open the complete manual for the `ls` command.
man ls 
#The command man git-clone displays the manual for the git clone command, explaining its options and usage.
man git-clone
#The --depth option in Git allows you to clone a repository with a limited commit history, downloading only the most recent commits. This makes the process faster and lighter, as it doesn't include the entire project history.
#--depth <depth>
           #Create a shallow clone with a history truncated to the specified number of commits. Implies
           #--single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches.
           #If you want to clone submodules shallowly, also pass --shallow-submodules.
--depth
# It was used to create a .sh file
touch script.sh
# It is used to grant permissions so that everyone can run it.
chmod +x script.sh
# It is used to grant permissions, and only the owner can execute them.
chmod u+x script.sh
# It is used to remove reading from others 
chmod o-r secreto.txt
# It is used only so that the owner can read and write 
chmod u+rw,go-rwx privado
#The command sudo chmod +x init gives execution permission to the init file using administrator privileges.
sudo chmod +x init
#The command `sudo echo "hello" > etc/protected_file` attempts to write the text "hello" to a protected file, but it may fail because the redirection (>) is not executed with `sudo`.
sudo echo "hola" > etc/archivo_protegido
#The command `echo "hello" | sudo tee /etc/protected_file > /dev/null` writes the text "hello" to a file protected using sudo. `tee` is used to give administrator privileges for writing, and `> /dev/null` prevents the text from being displayed on the screen.
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null
#The command cat etc/protected_file displays the contents of the protected_file in the terminal.
cat etc/archivo_protegido
#This command uses administrator privileges to execute an echo that appends text to the end of a protected file in /etc, using redirection >> within a sh -c so that the entire operation has root privileges.
sudo sh -c 'echo "chao" >> /etc/archivo_protegido'
#It makes the change to the root
sudo -i
#Switch to root user (full administrator mode)
sudo su
#Switch to root user (full administrator mode)
sudo su-
#It is used to exit the current session.
exit 
#Expand the variable, show the content and the path where it is located
echo "$HOME"
#It treats it as a string and prints it as if it were text.
echo '$HOME'