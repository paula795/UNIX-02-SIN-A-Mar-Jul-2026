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
#Seccion seven 
#It is used to access the required directory.
cd documnts
# This command was used to create the file within the directory we requested.
touch hellpo.sh
#When you list a file with the ls -l command, the output includes information about its permissions.
ls -l hello.sh
#  It is used to change the permissions of the original file depending on what we need to give it.
chmod u+x hello.sh 
# When you list a file with the ls -l command, the output includes information about its permissions. The owner user now has permission to execute
ls -l hello.sh 
# Message inside the file
#Since our file didn't contain any information, the following was executed:
# We used this command to write the desired information inside our file
nano hello.sh
# The first line, #!/bin/bash, specifies the interpreter that will be used to run the file; in this case, the Bash shell. The second line uses the echo command to display the message "Hello World!" on the screen when the script is executed.
!/bin/bash
echo "Hello World!"
# Run the hello.sh script from the current directory.
./hello.sh     
# This command was used to change the owner of a file; all of this is done in the documents directory.
sudo chown root hello.sh
# I used it for the verification of the change of ownership
ls -l hello.sh
# This command was executed, which gave us the error "permission denied", thus confirming that the previous commands were executed correctly.
./hello.sh 
# The file can only be executed by the root user, so the use of sudo is required to obtain the necessary permissions.
sudo ./hello.sh   
#Seccion ten
# What it asks us to do is run the cat command, but since we don't have the file it's asking for in our directory, we have to create it and increase the file's contents, for which we use:
touch animals.txt #(File creation)
nano animals.txt #(Content creation)
1 retriever                                                             
2 badger                                                                
3 bat                                                                  
4 wolf                                                                  
5 eagle
# We use this command to view the contents within the animals.txt file
cat animals.txt
# What it asks us to do is run the cat command, but since we don't have the file it's asking for in our directory, we have to create it and increase the file's contents, for which we use:
touch alpha.txt     #(File creation)
nano alpha.txt     #(Content creation)
A is for Apple                    
B is for Bear           
C is for Cat                      
D is for Dog                               
E is for Elephant                                      
F is for Flower       
G is for Grapes                     
H is for Happy                                     
I is for Ink                                                         
J is for Juice                                   
K is for Kangaroo
L is for Lol                                                             
M is for Monkey                       
N is for Nickel                             
O is for Oval                  
P is for Pickle       
Q is for Quark                         
R is for Rat                          
S is for Sloth                       
T is for Turnip                        
U is for Up                                     
V is for Velvet                       
W is for Walrus                    
X is for Xenon                        
Y is for Yellow         
Z is for Zebra 
# This command displays the contents within the alpha.txt document.
cat alpha.txt
# To view only the first few lines of the previous result for the file
head alpha.txt 
# It is used to view the last lines of the file
tail alpha.txt 
# This command n-# is used to specify how many lines you want to see; in this case: see the first five lines of the alpha.txt file.
head -n 5 alpha.txt  
# This n-# command is used to specify how many lines you want to view; in this case: view the last five lines of the alpha.txt file.
tail -n 5 alpha.txt 
# This command copies the /etc/passwd file from its original location on the system to the current directory. The dot (.) represents the working directory, so the file is saved as a copy in that location.
cp /etc/passwd .
# This command allows us to verify that the copy was made.
ls