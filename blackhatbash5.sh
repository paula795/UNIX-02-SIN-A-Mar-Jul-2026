#!/bin/bash
#It displays in real time the processes that are running on the system
top 
# top starts as a background process, but because top is an interactive application that needs to control the terminal, it doesn't usually work usefully in the background and may display strange messages or stop.
top&

touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "El comando lzl fallo "

echo "Hello World!" > output.txt
cat output.txt

echo "Chao mundo!" > output.txt
cat output.txt

echo "Chao chao!" >> output.txt
cat output.txt

ls -l / &> stdout_and_stderr.txt
cat stdout_and_stderr.txt

ls -l / &>> stdout_and_stderr.txt
cat stdout_and_stderr.txt

ls -l / 1> stdout.txt 2> stderr.txt
ls -l / 1> stdout.txt 2> stderr.txt
cat stdout.txt
cat stderr.txt
lzl 2> error.txt
cat error.txt