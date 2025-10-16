#!/usr/bin/env bash

# Startup script for Submission Reminder App

cd "$(dirname "$0")"
echo -n "Starting the Submission Reminder App"
for i in {1..3}; do
    sleep 1         # wait 1 second
    echo -n "."     # print a dot without newline
sleep 1
done
echo                # move to a new line after the dots

echo "--------------------------------------------"

bash app/reminder.sh
