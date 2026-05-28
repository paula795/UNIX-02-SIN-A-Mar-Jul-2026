# View current main group
id
# Show only the name of the main group
id -gn 
# It creates a file and shows us which group inherits.
touch ~/test_grupo_heredado.txt
#It displays detailed file information, including permissions, owner, and the group it inherited upon creation.
ls -la ~/test_grupo_heredado.txt
# Show only the name of the main group  
id -gn 
# It is used to verify which is the main active group before making changes with newgrp.
echo "Grupo actual:$(id-gn)"
# This command creates a file to check which group inherits the file when it is created.
touch ~/antes_de_newgrp.txt
#It displays detailed file information, including permissions, owner, and the group it inherited upon creation.
ls -la ~/antes_de_newgrp.txt 
# Update the system's list of available packages and repositories.
apt update 
# Update installed programs and packages to their latest versions.
apt upgrade 
# Install additional system packages, including tools related to Linux users, groups, and utilities.
apt install uidmap util-linux-extra
# create the developers group
groupadd desarrolladores  
# Temporarily change the active primary group to the developers group.
newgrp desarrolladores 
# It only displays the name of the user's active primary group.
id -gn
# Displays the name of the new active group using the result of the id -gn command.
echo "Nuevo grupo activo: $(id -gn)"
# Creates a file inside the subshell
touch ~/dentro_de_newgrp.txt   
# It displays detailed file information, including permissions, owner, and inherited group.
ls -la ~/dentro_de_newgrp.txt  
# Create the project_dev folder and the src subfolder; the -p option allows you to create intermediate directories automatically.
mkdir -p ~/proyecto_dev/src
# Displays all files and folders in the personal directory with detailed information.
ls -la ~/
# Close the current session or exit the newgrp environment, restoring the previous group.
exit
# Displays the name of the active primary group after exiting newgrp.
id -gn
# Displays on screen the name of the restored group using the result of the id -gn command.
echo "Grupo restaurado: $(id -gn)"
# It displays detailed information from both files to compare the group each inherited before and after using newgrp.
ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt 
#-rw-r--r-- 1 root root            0 may 28 12:51 /root/antes_de_newgrp.txt
#-rw-r--r-- 1 root desarrolladores 0 may 28 13:21 /root/dentro_de_newgrp.txt
                                                                                   
