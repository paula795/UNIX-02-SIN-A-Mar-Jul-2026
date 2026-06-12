#!/bin/bash
# Create a variable called FILE and assign it the name of the file to be checked.
FILE="output1.txt"
# Create the output1.txt file if it does not exist; if it already exists, update its modification date.
touch "${FILE}"
# Starts a loop that will repeat until the file is empty. The -s option checks that the file exists and has content.
until [[ -s "${FILE}" ]]; do
# Muestra un mensaje indicando que el archivo aún está vacío.Muestra un mensaje indicando que el archivo aún está vacío.
 echo "${FILE} is empty..."
 # It informs that the file will be checked again after 2 seconds.
 echo "Checking again in 2 seconds..."
 # Pause script execution for 2 seconds.
 sleep 2
 # Marks the end of the block of instructions that are repeated in the until loop.
done
# It displays a message when the file is no longer empty and contains data.
echo "${FILE} appears to have some content in it!"

# echo "listo" > output1.txt = It serves to end the loop