#!/bin/bash
# This function checks if the current user ID equals zero.
# Define a function called check_if_root. The instructions within it will be executed when the function is called.
check_if_root(){
#Comprueba si el valor de EUID es igual a 0. En Linux, el usuario root tiene el identificador numérico 0.
if [[ "${EUID}" -eq "0" ]]; then
# Returns the value 0, indicating that the condition was true and that the user is root.
 return 0
 # It is executed when the above condition is not met.
 else
 # Returns the value 1, indicating that the user is not root.
 return 
 # The if conditional structure ends.
 fi
 # The function definition is complete.
}
# Call the check_if_root function. If the function returns 0, the condition is considered true.
if check_if_root; then
# It displays a message indicating that the current user has administrator (root) privileges.
 echo "User is root!"
 # It is executed when the function returns a value other than 0.
else
# It displays a message indicating that the current user is not root.
 echo "User is not root!"
 # The main conditional structure ends.
fi

#What is EUID?
#EUID stands for Effective User ID.
#It's a special Bash variable that stores the ID number of the user running the process.