#!/usr/bin/env bash

# Find the first directory in the current folder that matches "submission_reminder_*"
ParentDir=$(find . -maxdepth 1 -type d -name "submission_reminder_*" | head -n 1)

# This to Check if no directory was found
if [ -z "$ParentDir" ]; then
    echo "Could not find any submission_reminder_* directory in the current folder."
    exit 1
fi
CONFIG="$ParentDir/config/config.env"


#Then insert the assignment name into the config file to replace the current assignment being analysed

echo "======================================"
echo " Choose an assignment to track:"
echo "======================================"
echo "1) Shell Navigation"
echo "2) Shell Basics"
echo "3) Git"
echo "4) Emacs"
echo "5) Vi"
echo "======================================"

read -p "Enter your Choice:" new_assignment

# Validate the user's input
case "$new_assignment" in
    "Shell Navigation"|"Shell Basics"|"Git"|"Emacs"|"Vi")
        # valid assignment, do nothing
        ;;
    *)
        echo "Invalid choice. Please run the script again and select 1–5."
        exit 1
        ;;
esac

# Update the ASSIGNMENT variable in the config.env file with the new assignment
sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=\"$new_assignment\"/" "$CONFIG"
