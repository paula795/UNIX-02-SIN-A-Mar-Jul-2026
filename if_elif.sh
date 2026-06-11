#!/bin/bash
# Store the first argument that the user passes when running the script in the USER_INPUT variable.
USER_INPUT="USER_INPUT"
# Check if USER_INPUT is empty (-z means zero length).
if [[ -z "${USER_INPUT}" ]]; then
# It displays a message indicating that an argument must be provided.
 echo "You must provide an argument!"
 # The script ends with error code 1.
 exit 1
 # Finaliza el primer bloque if.
fi
# Check if the entered argument corresponds to an existing file.
if [[ -f "${USER_INPUT}" ]]; then
# Inform the user that the item found is a file.
 echo "${USER_INPUT} is a file."
 # If it's not a file, check if it corresponds to a directory.
elif [[ -d "${USER_INPUT}" ]]; then
# Inform the user that the found item is a directory.
 echo "${USER_INPUT} is a directory."
 # Se ejecuta cuando el nombre ingresado no corresponde ni a un archivo ni a un directorio.
else
# It displays a message indicating that the item does not exist or is not recognized as a file or directory.
echo "${USER_INPUT} is not a file or a directory."
# Finaliza la estructura condicional.
fi
