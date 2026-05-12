# Displays the current system permission mask. 
umask
# Create an empty file called file1.
touch archivo1
# Create a directory called directory1.
mkdir directorio1
# It displays files and directories with detailed information on permissions, owner, size, and date.
ls -l
# Create a directory called file1.
umask 027
#
touch archivo2
# Create a directory called directory2.
mkdir directorio2
# It displays files and directories with detailed information on permissions, owner, size, and date.
ls -l
# Update the list of available packages in the repositories.
apt- get update
# Install the ACL package to manage advanced access control lists.
apt-get install acl
# Recursively changes the owner of all files and folders in the current directory to the current user.
chown -R $(whoami) .
# Recursively removes all extended ACLs from the current directory and its files.
setfacl -bnR .
# Create an emprty file called file3.
touch archivo3
# Create a directory called directory3.
mkdir directorio3
# It displays files and directories with detailed information on permissions, owner, size, and date.
ls -l 
# Configure a very restrictive permission mask. Only the owner will have access to newly created files and directories.
umask 077
# Create an empty file called secret.txt applying the permissions defined by umask 077.
touch secreto.txt
# Create a directory called private with private permissions for the owner.
mkdir privado
# Displays permissions and details of created files and directories.
ls -l
#Restores a more common permission mask, allowing reading for the group and other users on new files and directories.
umask 022
# Displays the name of the current user who is using the system.
whoami
# Write the text "Hello" inside the file my_file. If the file does not exist, create it; if it exists, replace its contents.
echo "Hola" > mi_archivo
# Displays detailed information about the file my_file, including permissions, owner, size, and modification date.
ls -l mi_archivo
# Create a new user named paula, automatically generating their home folder and assigning zsh as the default shell.
useradd -m -s /usr/bin/zsh paula
# Change the owner of the file my_file to the user paula.
chown paula mi_archivo
# Displays detailed information about the file my_file, including permissions, owner, group, and size.
ls -l mi_archivo
# Displays the groups to which the current user belongs.
groups
# Create a new group called group_test in the system.
groupadd grupo_test
# Displays the contents of the /etc/group file, where the existing system groups are stored.
cat /etc/group
# Create an empty file called common. 
touch comun 
# Displays detailed information about the common file
ls -l comun 
# Add the user paula to the secondary group group_test without removing their other groups.
usermod -a -G grupo_test paula
# Change the common file owner group to the group group_test.
chgrp grupo_test comun
#  Displays detailed information about the common file to verify the group change.
ls -l comun
# Change the owner of the file my_file to the user paula and the owner group to group_test at the same time.
chown paula:grupo_test mi_archivo
# Displays detailed information about the file my_file to verify the change of owner user and group.
ls -l mi_archivo