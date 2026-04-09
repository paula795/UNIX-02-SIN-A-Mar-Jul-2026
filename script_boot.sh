# This command creates a new folder called project in the current directory.
mkdir 
# Here you move (change directory) to the project folder you just created.
#relative path
cd proyecto/ 
# This command takes you directly to that complete route, no matter where you were before.
#absolute path
#Relative path
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto
# It creates the path to the root directory no matter where I am.
cd
# It takes us to the home directory (~ this symbol makes us move to the home directory because it is its symbol)
cd ~ 
#This command displays the contents of the PATH variable, which contains the paths where the system looks for executable programs.
echo $PATH
#This command takes you to the user's home directory (HOME), which is where your files are stored by default.
cd $HOME
#The ls -lai command allows you to view the contents of the current directory, showing detailed information such as inodes, permissions, owner, and size.
ls -lai
#Each parameter I give to the command can be executed separately with this command.
ls -l -a -i
#This command shows us the documentation for ls.
man ls 
#It gives us the directories . y .. that are hidden, which are hard links found in any Linux directory.
#. directorio actual
#.. It represents the parent directory.
#That is, the previous folder (the one that contains the current one).
ls --all