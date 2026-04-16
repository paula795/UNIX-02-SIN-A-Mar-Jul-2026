#They allow you to list all files and directories in the current location, including hidden files.
#short option
ls -a 
#They allow you to list all files and directories in the current location, including hidden files.
#long option
ls --all
# The command ls -l -a -h lists all files and directories on the system, including hidden ones. It displays detailed information such as permissions, owner, size, and modification date for each file. The `-h` option presents sizes in a more readable format, such as kilobytes or megabytes, instead of bytes.
ls -l -a -h
#The command ls -lah performs exactly the same function as the previous one, since it combines the -l, -a and -h options into a single abbreviated form.
ls -lah
#It allows you to create a directory whose name is -rf. When using the -, the information is not presented as options but as plain text.
mkdir -- -rf
#What it does is delete the created file
rmdir -- -rf
#The `ls --help` command is used to display the help for the ls command, which details all available options, their meaning, and how to use them.
ls --help
# The man ls command is used to open the complete manual for the `ls` command.
man ls 
#The command man git-clone displays the manual for the git clone command, explaining its options and usage.
man git-clone
#The --depth option in Git allows you to clone a repository with a limited commit history, downloading only the most recent commits. This makes the process faster and lighter, as it doesn't include the entire project history.
#--depth <depth>
           #Create a shallow clone with a history truncated to the specified number of commits. Implies
           #--single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches.
           #If you want to clone submodules shallowly, also pass --shallow-submodules.
--depth
