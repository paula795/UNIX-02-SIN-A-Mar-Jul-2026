#!/bin/bash
#store the first argument of the script in the variable
FIRST_NAME="${1}"
# store the second argument of the script in the variable
LAST_NAME="${2}"
# crea el archivo output.txt si no existe.
touch output.txt
# Write the current date in DD-MM-YYYY format into the file, overwriting it.
date +"%d-%m-%Y" > output.txt
# Add the full name to the end of the file without deleting the previous part.
echo "${FIRST_NAME} ${LAST_NAME}" >> output.txt
#Create a copy of the output.txt file called backup.txt.
cp output.txt backup.txt
# displays the file contents in the terminal.
cat output.txt
# grants execution permissions to the script for the owner user.
chmod u+x exercise1.sh
./exercise1.sh Paula Simbaña #Run the script passing “Paula” as the first argument and “Simbaña” as the second.