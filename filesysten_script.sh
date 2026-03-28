#Changes the current directory to/, wich is the top-level directory in linux/Unix systems.
cd / key
ls
#To see the history of commands  you have executed in the terminal.
history
# Go to the special /proc folder.
#This folder contains system information and real-time processes.
cd/proc
ls
# Displays the contents of the cpuinfo file.
cat cpuinfo
#Changes directory to that specific project folder.
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/
#Without arguments, it takes you back to your home directory.
cd
#Moves the file saludobin to the /bin/ directory (system binaries folder).
sudo mv saludobin /bin/
#Executes the program named saludobin (if it exists and has execution permissions).
saludobin
#Changes directory to /etc/gss, a folder related to system configuration.
cd /etc/gss
Shows the command history again.
history
#It helps us see the directory path.
pwd 
#It displays files and folders by adding a symbol at the end.
ls -F
#This displays the files and folders along with their inode number.
ls -i