# I created the remote repository on Codeberg with the name:
# UNIX-02-SIN-A-Mar-Jul-2026

# I checked the current Git remotes.
git remote -v

# I removed the previous incorrect Codeberg remote.
git remote remove codeberg

# I added the correct Codeberg repository URL.
git remote add codeberg https://codeberg.org/paulagbb/UNIX-02-SIN-A-Mar-Jul-2026.git

# I verified that the Codeberg remote was added correctly.
git remote -v

# I tried to push the branch to Codeberg.
git push -u codeberg linux_cisco_2

# I pulled the Codeberg branch because the remote repository already had an initial README commit.
git pull codeberg linux_cisco_2 --allow-unrelated-histories --no-rebase

# I checked the repository status after resolving the README conflict.
git status

# I pushed the local branch to Codeberg successfully.
git push -u codeberg linux_cisco_2

# Module 12
# Creating a CSV file for the move command example.
touch people.csv

# Creating the Work directory.
mkdir Work

# Moving the CSV file to the Work directory.
mv people.csv Work

# Verifying the moved file.
ls Work

# Creating text files for the multiple file move example.
touch numbers.txt letters.txt alpha.txt

# Creating the School directory.
mkdir School

# Moving multiple files to the School directory.
mv numbers.txt letters.txt alpha.txt School

# Verifying the moved files.
ls School

# List the contents of the current Documents directory.
ls 

# Moving a file within the same directory is an efficient way to rename it. For example, in the following example, the file animals.txt is renamed zoo.txt
mv animals.txt zoo.txt

# Module 13 

# Permanently delete the linux.txt file.
rm linux.txt

# Check if the linux.txt file still exists. It will show an error because it was deleted.
ls linux.txt
# ls: cannot access 'linux.txt': No such file or directory

# It tries to delete the Work folder, but fails because rm does not delete directories by default.
rm Work
# rm: cannot remove 'Work': Is a directory

# Delete the Work folder and all its contents using the recursive -r option.
rm -r Work

# Check if the Work folder still exists. It shows an error because it was deleted.
ls Work 
#ls: cannot access 'Work': No such file or directory

# Module 14

# Change to the Documents directory where the text filtering exercises will be performed.
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/Documents

# Copy the system's passwd file to the current directory so you can work with it without modifying the original file.
cp /etc/passwd .

# Find and display the lines in the passwd file that contain the pattern sysadmin.
grep sysadmin passwd

# Find and display the lines in the passwd file that contain the pattern root. (We use root because we don't have the requested file in practice.)
grep root passwd

# Module 14.2 

# Search for all lines containing the word root in the passwd file.
grep 'root' passwd

# Search only for lines that begin with the word root. The ^ symbol indicates that the match must be at the beginning of the line.
grep '^root' /etc/passwd

# Displays the entire contents of the alpha-first.txt file on screen
cat alpha-first.txt 

# Look for the lines that end with the letter r. The symbol $ represents the end of a line.
grep 'r$' alpha-first.txt

# Displays the full contents of the file red.txt
cat red.txt

# Find words that begin with the letter r, have two characters in between, and end with the letter f.
grep 'r..f' red.txt

# Look for matches that begin with r, continue with any two characters, and end with the letter d.
grep 'r..d' red.txt

# Search for lines that contain at least four consecutive characters, using the period as a wildcard to represent any character.
grep '....' red.txt  

# Search within the /etc/passwd file for words or text sequences that match the specified pattern.
grep 'r..t' /etc/passwd

# Displays the full contents of the profile.txt file
cat profile.txt

# Search for lines containing one or more numeric characters within the file from 0 to 9.
grep '[0-9]' profile.txt

# Look for lines that include characters other than numbers. The symbol ^ inside the brackets indicates negation.
grep '[^0-9]' profile.txt

# Search for lines that contain a period (.) as a literal character within the file.
grep '[.]' profile.txt

# Displays the contents of the file red.txt
cat red.txt

# Find words that begin with r and end with d, allowing that there are no or several e's between them.
grep 're*d' red.txt

# It refers to lines with the absence or presence one or more times of the character o or the character e
grep 'r[oe]*d' red.txt

# Search for patterns related to the letter z, allowing it to appear none, once, or several times.
grep 'z*' red.txt

# Look for patterns that contain the letter e repeated zero or more times within the text.
grep 'e*' red.txt

# Find words that contain at least one letter e and that can continue with more consecutive e's.
grep 'ee*' red.txt

# Module 15 

# Return to the current user's home directory.
cd

# Try switching to the administrator (root) user to gain elevated privileges.
su -

# Try to shut down the system immediately.
shutdown now 

# Displays the current system date and time.
date 

# Schedule the system to shut down for the specified time (01:51).
shutdown 01:51   

# Schedule the system to shut down in one minute and display the message "Goodbye World!" to connected users.
shutdown +1 "Goodbye World!"

# Module 16

# Displays the system's network interface configuration, including IP addresses, connection status, and other network-related information.
ifconfig

# Send 4 test packets to the device with IP address 192.168.1.2 to verify network connectivity and measure response time.
ping -c 4 192.168.1.2 

# Send 4 test packets to the device with IP address 192.168.1.3 to check communication between devices on the network.
ping -c 4 192.168.1.3

# Close the current session or exit the command interpreter in use.
exit 

# Module 17

# Displays the processes that are being executed by the user in the current session.
ps

# It displays all processes that are active on the system, regardless of the user running them.
ps -e

# It presents a detailed list of all active processes, including information such as the owner user, process identifier (PID), parent process, and the commands used to start them.
ps -ef

# Module 18

# Update the list of available packages from the configured repositories.
sudo apt-get update

# Search for packages related to the word "cow" to find programs available for installation.
apt-cache search cow

# Install the cowsay package on the system.
sudo apt-get install cowsay 

# Displays the indicated message within a drawing of a cow generated by the program.
cowsay 'NDG Linux Unhatched'

# Re-synchronize the list of available packages.
sudo apt-get update 

# Update installed packages to their latest versions.
sudo apt-get upgrade

# Uninstall cowsay and also delete its configuration files.
sudo apt-get purge cowsay