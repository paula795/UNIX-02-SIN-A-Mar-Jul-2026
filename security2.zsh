# View current main group
id
# Show only the name of the main group
id -gn 
# It creates a file and shows us which group inherits.
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
#
echo "Grupo actual:$(id-gn)
#
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt 