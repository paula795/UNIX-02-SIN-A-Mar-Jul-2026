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