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
echo "Grupo actual:$(id-gn)
# This command creates a file to check which group inherits the file when it is created.
touch ~/antes_de_newgrp.txt
#It displays detailed file information, including permissions, owner, and the group it inherited upon creation.
ls -la ~/antes_de_newgrp.txt 