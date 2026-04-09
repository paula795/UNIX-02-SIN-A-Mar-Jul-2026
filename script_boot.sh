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
#This command displays the contents of the directory with detailed information
ls -lai
total 8
1572988 drwxrwxrwx+ 2 codespace codespace 4096 Apr  9 12:19 .
1572874 drwxrwxrwx+ 5 codespace root      4096 Apr  9 12:19 ..
# Explication 
#total 8
#Indicates the total space used by the listed items in the directory.
#First line
#1572988: inode number
#d: it is a directory
#rwxrwxrwx+: Permissions (everyone has full access + extra permissions)
##2: number of links
#codespace codespace: owner user and group
#4096: size in bytes
#.: current directory
#Second line
#1572874: inode
#d: directory
#rwxrwxrwx+: permissions
#5: links
#codespace root: user and group
#4096: size
#..: parent directory
#
stat .
 File: .
  Size: 4096            Blocks: 8          IO Block: 4096   directory
Device: 7,4     Inode: 1572988     Links: 2
Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-04-09 12:19:03.443620973 +0000
Modify: 2026-04-09 12:19:02.202621056 +0000
Change: 2026-04-09 12:19:02.202621056 +0000
 Birth: 2026-04-09 12:19:02.202621056 +0000

Device: 7,4 
#Explicacion
#Device indica el disco o dispositivo donde está guardado el archivo o carpeta.
#Ese número es un identificador interno del sistema para saber en qué disco o partición está tu archivo.