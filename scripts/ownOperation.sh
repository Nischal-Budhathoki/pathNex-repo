#!/bin/bash

echo "========================================="
echo " Linux Ownership & Permission Automation"
echo "========================================="

# Create test file

echo "Creating hello.txt..."
touch hello.txt

echo "Adding initial content..."
echo "Linux ownership and permission practice file" > hello.txt

echo
echo "Initial file state:"
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "1. Show current owner"
echo "-----------------------------------------"
stat hello.txt | head -n 5

echo
echo "-----------------------------------------"
echo "2. Change owner to ubuntu (requires sudo)"
echo "-----------------------------------------"
sudo chown ubuntu hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "3. Change owner and group to ubuntu:ubuntu"
echo "-----------------------------------------"
sudo chown ubuntu:ubuntu hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "4. Change only group to ubuntu"
echo "-----------------------------------------"
sudo chown :ubuntu hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "5. Restore ownership to ubuntu:ubuntu"
echo "-----------------------------------------"
sudo chown ubuntu:ubuntu hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "6. Apply permission changes (chmod basics)"
echo "-----------------------------------------"
chmod 644 hello.txt
ls -la hello.txt

echo
echo "7. Add execute for user"
chmod u+x hello.txt
ls -la hello.txt

echo
echo "8. Remove write from group"
chmod g-w hello.txt
ls -la hello.txt

echo
echo "9. Give full permissions to owner only"
chmod 700 hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "Permission Breakdown"
echo "r = 4 | w = 2 | x = 1"
echo "Example: 755 = rwx r-x r-x"
echo "Example: 644 = rw- r-- r--"

echo
echo "Final file state:"
ls -la hello.txt

echo
echo "Ownership & Permission Automation Completed!"
echo "========================================="
