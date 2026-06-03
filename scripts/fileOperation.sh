#!/bin/bash

echo "========================================="
echo " Linux Permission Operations Practice"
echo "========================================="

# Create practice file

touch hello.txt

echo "Linux Permission Practice File" > hello.txt

echo
echo "Initial Permissions:"
ls -la hello.txt



echo
echo "-----------------------------------------"
echo "1. Add Read and Write permission to Group"
echo "chmod g+rw hello.txt"
echo "-----------------------------------------"
chmod g+rw hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "2. Add Write permission to Others"
echo "chmod o+w hello.txt"
echo "-----------------------------------------"
chmod o+w hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "3. Remove Write permission from Others"
echo "chmod o-w hello.txt"
echo "-----------------------------------------"
chmod o-w hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "4. Set Execute permission for Others"
echo "chmod o=x hello.txt"
echo "-----------------------------------------"
chmod o=x hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "5. Remove Execute permission from Others"
echo "chmod o-x hello.txt"
echo "-----------------------------------------"
chmod o-x hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "6. Add Read permission to Others"
echo "chmod o+r hello.txt"
echo "-----------------------------------------"
chmod o+r hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "7. Add Execute permission to User"
echo "chmod u+x hello.txt"
echo "-----------------------------------------"
chmod u+x hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "8. Remove Write permission from Group"
echo "chmod g-w hello.txt"
echo "-----------------------------------------"
chmod g-w hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "9. Give Read permission to Everyone"
echo "chmod a+r hello.txt"
echo "-----------------------------------------"
chmod a+r hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "10. Set Exact Permissions"
echo "chmod u=rwx,g=rw,o=r hello.txt"
echo "-----------------------------------------"
chmod u=rwx,g=rw,o=r hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "11. Numeric Permissions"
echo "chmod 764 hello.txt"
echo "-----------------------------------------"
chmod 764 hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "12. Numeric Permissions"
echo "chmod 755 hello.txt"
echo "-----------------------------------------"
chmod 755 hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "13. Numeric Permissions"
echo "chmod 777 hello.txt"
echo "-----------------------------------------"
chmod 777 hello.txt
ls -la hello.txt

echo
echo "-----------------------------------------"
echo "14. Numeric Permissions"
echo "chmod 644 hello.txt"
echo "-----------------------------------------"
chmod 644 hello.txt
ls -la hello.txt


echo "Permission Reference"
echo "r = 4"
echo "w = 2"
echo "x = 1"


echo "Examples:"
echo "777 = rwx rwx rwx"
echo "755 = rwx r-x r-x"
echo "744 = rwx r-- r--"
echo "700 = rwx --- ---"
echo "644 = rw- r-- r--"
echo "600 = rw- --- ---"


echo "Practice Completed Successfully!"

