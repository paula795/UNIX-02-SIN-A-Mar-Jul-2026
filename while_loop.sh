#!/bin/bash
# Create a variable called SIGNAL_TO_STOP_FILE and assign it the name of the file that will serve as the signal to stop the loop.
SIGNAL_TO_STOP_FILE="stoploop"
# Starts a loop that will run as long as the file does not exist. `-f` checks for the existence of a file and `!` negates the condition.
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
# It displays a message indicating that the signal file has not yet been created.
 echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exis
t..."
# It displays a message informing that the check will be repeated after 2 seconds.
 echo "Checking again in 2 seconds..."
 # Pause script execution for 2 seconds before rechecking the condition.
 sleep 2
 # Marks the end of the block of instructions that are repeated within the while loop.
done
# It displays a message indicating that the file was found and that the script will finish executing.
echo "File was found! Exiting..."