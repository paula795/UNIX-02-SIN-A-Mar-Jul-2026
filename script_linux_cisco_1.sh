# This command displays a list of the files located in the current directory.
ls 
# This command displays all files located within a specific directory. In our case, we don't have that directory, so we receive the result that it's unavailable.
ls documents
# When trying to run this command, we got "bash: aptitude: command not found," which basically indicates that the aptitude command is not installed on the system. We solved this with the following commands:
#aptitude moo is a recreational command that doesn't serve a technical function; it's a hidden feature.
aptitude moo
sudo apt update
sudo apt install aptitude