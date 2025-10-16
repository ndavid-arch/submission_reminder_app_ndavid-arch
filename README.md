**Submission Reminder App**

This application tracks student assignment submissions and alerts for pending tasks.

Step 1: Setup the Environment

Run the setup script to create the project directory, subdirectories, and necessary files:

chmod +x create_environment.sh
./create_environment.sh


Enter your name when prompted.

A folder submission_reminder_<YourName> will be created.

The folder will contain the necessary subdirectories (app, modules, assets, config) and files.

All .sh scripts inside will be made executable automatically.

Step 2: Run the Reminder App

Navigate to the newly created directory and run the startup script:

cd submission_reminder_<YourName>
./startup.sh


This will display the current assignment and the students who have not submitted it yet.

Step 3: Change the Assignment Being Tracked

To track a different assignment, go back to the parent directory where the copilot script is located and run it:

cd ..
chmod +x copilot_shell_script.sh
./copilot_shell_script.sh


The script will automatically detect your submission_reminder_<YourName> folder.

Type the assignment name you want to track (case-insensitive):

Shell Navigation
Shell Basics
Git
Emacs
Vi


After updating, go into the submission_reminder folder to run the startup script again:

cd submission_reminder_<YourName>
./startup.sh


This will show the submission status for the newly selected assignment.
