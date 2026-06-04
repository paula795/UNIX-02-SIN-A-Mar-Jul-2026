#!/usr/bin/env bash
bash --version
env
echo ${SHEL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}

man ls
ps -e -f
ps -ef
df --human-readable
#Run the script in restricted Bash mode, limiting certain actions such as changing directories or modifying specific variables.
bash -r blackhatbash1.sh
# Check the script's syntax without running it. This allows you to detect typos, incorrect parentheses, missing quotation marks, or improperly closed structures.
bash -n blackhat1bash.sh
# If the script contains a while true, a for ((;;)) or some condition that never ends, you will see that it prints lines nonstop.
bash -x blackhat1bash.sh