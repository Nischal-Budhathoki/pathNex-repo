#!/bin/bash

echo "========================================="
echo " DevOps Group Ownership (chgrp) Automation"
echo "========================================="

# -----------------------------

# CONFIGURATION

# -----------------------------

GROUPNAME="devopsgrp"
FILENAME="groupfile.txt"

echo
echo "Target Group: $GROUPNAME"
echo "Target File: $FILENAME"


#create group if not exists
echo
echo "1. Checking / Creating Group"
echo "-----------------------------------------"

if getent group "$GROUPNAME" > /dev/null; then
echo "Group '$GROUPNAME' already exists"
else
sudo groupadd "$GROUPNAME"
echo "Group '$GROUPNAME' created"
fi

#creating file
echo
echo "2. Creating file"
echo "-----------------------------------------"

touch "$FILENAME"
echo "This file is for chgrp practice" > "$FILENAME"

ls -la "$FILENAME"

#show current working owner
echo
echo "3. Before chgrp"
echo "-----------------------------------------"

ls -l "$FILENAME"


#change group ownership
echo
echo "4. Applying chgrp"
echo "-----------------------------------------"

sudo chgrp "$GROUPNAME" "$FILENAME"

echo "Group changed to $GROUPNAME"


#verify changes
echo
echo "5. After chgrp"
echo "-----------------------------------------"

ls -l "$FILENAME"

#change multiple files

echo
echo "6. Creating multiple files + chgrp"
echo "-----------------------------------------"

touch file1.txt file2.txt file3.txt
echo "sample" > file1.txt
echo "sample" > file2.txt
echo "sample" > file3.txt

sudo chgrp "$GROUPNAME" file1.txt file2.txt file3.txt

ls -l file*



echo
echo "7. Recursive chgrp (like deployment folders)"
echo "-----------------------------------------"

mkdir -p project_folder/subfolder
touch project_folder/app.txt
touch project_folder/subfolder/config.txt

sudo chgrp -R "$GROUPNAME" project_folder

ls -l project_folder
ls -l project_folder/subfolder



echo
echo " chgrp Automation Completed"
echo
