!/bin/bash

# Script Name:                  ops loop challenge
# Author:                       Wayne Brandon
# Date of latest revision:      04/28/2023
# Purpose:                     Educational

# Declaration of variables


# Declaration of functions


# Main
# Create a while loop that runs continuously
while true;
do
    # Displays running processes
    ps aux
    # Asks the user for a PID
    echo "Enter PID number to End that process"
    # Kills the process with that PID
    read ans
    kill $ans
    # Starts over at step 1 and continues until the user exits with Ctrl + C
done
# End