# This command displays a list of the files located in the current directory.
ls 
# This command displays all files located within a specific directory. In our case, we don't have that directory, so we receive the result that it's unavailable.
ls documents
# When trying to run this command, we got "bash: aptitude: command not found," which basically indicates that the aptitude command is not installed on the system. We solved this with the following commands:
#aptitude moo is a recreational command that doesn't serve a technical function; it's a hidden feature.
aptitude moo
sudo apt update
sudo apt install aptitude
# ls -l is used to view complete and detailed information about files and directories, not just their names.
ls -l
#The -r option in the ls command is used to reverse the order in which the files are listed, showing the most recent ones first.
ls -r 
# The -l and -r options can be combined in the ls command regardless of the order, as they produce the same result: listing files with detailed information in reverse order.
ls -l -r
ls -rl
ls -lr
# Use the -v option twice separately. Each -v increases the level of detail (or changes the Easter Egg message).
aptitude -v -v moo
#The options are combined into a single block (-vv).
aptitude -vv moo
#The pwd command prints the working directory, the current location where we are located.
pwd
# To make directory changes, create the documents directory
mkdir documents
# This command is used to change directories; in this case, we used "documents" as an argument to move to that directory.
cd documents
# `cd /` is used to go directly to the system's root directory
cd /
# This command creates a directory structure. The -p option allows you to create multiple folders at once (Documents, School, and Art).
mdkir -p Documents/School/Art
# This command takes us directly to the user's home directory, regardless of our location.
cd 
# This command allows you to go up one level in the directory structure, that is, it moves you to the parent directory of the current directory.
cd ..
# This command displays a detailed list of all files and directories within the /var/log/ path, which is where the Linux system stores logs. The -l option allows you to view information such as permissions, owner, size, and modification date for each file.explained listing of system logs 
ls -l /var/log/
# The -t option will sort the files by their timestamp.
ls -lt /var/log 
# The -S (size) option will sort the files by file size
ls -l -S /var/log
# The -r (reverse) option will reverse the order of any sorting type.
ls -lSr /var/log
# Using only the -r option with the file list in reverse alphabetical order
ls -r /var/log 
# This command is used to temporarily act as a different user (root).
su -
su -l
su --login
# The `sudo su` command allows you to switch to the root user using administrator privileges. `sudo` grants elevated permissions, `su` switches users, and `-` loads the full root user environment, simulating a full login.
sudo su - (This extra command was used to demonstrate that it works to log in as root)
# We use this command to close the root user session and return to normal.
exit 
#Administrative access section six
#Update the list of packages available in the system repositories.
sudo apt update
#Install the sl (Steam Locomotive) program on the system using administrator privileges.
sudo apt install sl
#Allows switching to the root user
sudo -su
#Add the path /usr/games to the PATH environment variable so that the system can find and run programs located in that directory.
export PATH=$PATH:/usr/games
#Run the program sl, which displays an animation of a train at the terminal.
sl 
# The `sudo sl` command doesn't work even if the program is installed because `sudo` uses a restricted PATH variable that doesn't include the `/usr/games` directory, where the executable is located. To fix this, you must run the command with its full path (`sudo /usr/games/sl`).
sudo /usr/games/sl