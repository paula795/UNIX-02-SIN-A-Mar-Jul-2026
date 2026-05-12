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