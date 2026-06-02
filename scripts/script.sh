#!/bin/bash

echo "This is a script to learn Linux commands"

echo "Listing files in current directory:"
ls

echo "Listing all files:"
ls -a

echo "Current directory:"
pwd

echo "Creating folder test_folder:"
mkdir -p test_folder

echo "Creating file file.txt:"
touch file.txt

echo "Adding content to file (non-interactive):"
echo "Hello Linux Learning" > file.txt

echo "Reading file content:"
cat file.txt

echo "Showing permissions:"
ls -la

echo "Permission basics:"
echo "- r = read (4)"
echo "- w = write (2)"
echo "- x = execute (1)"
echo "- d = directory"

echo "Ownership structure:"
echo "user (u), group (g), others (o)"

echo"to add permision and to remove it "
echo "Add Permissions (+), remove Permissions (-), Set Permissions (=)"

echo "Creating exercise file:"
touch exercise.txt

echo "Adding content:"
echo "Linux practice file" > exercise.txt

echo "Checking current user:"
whoami

echo "Changing permissions:"
chmod u+x exercise.txt
chmod g-w exercise.txt
chmod a+r exercise.txt

echo "Final permissions:"
ls -l exercise.txt

echo "Checking groups:"
groups

echo ". stands for the current working file where are we exactly"

echo ".. stands for the parent directory"

echo "To display few lines of headers of the file"
head

echo "To display last few lines of the file "
tail

echo "Disk Usage:"
df -h

echo "Memory Usage:"
free -h

echo "Current Processes:"
ps aux | head

echo "Environment Variables:"
env | head

echo "Current Date:"
date

echo "Script execution completed."