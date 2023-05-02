#!/bin/bash

# Script Name:                  Conditionals
# Author:                       Wayne Brandon
# Date of latest revision:      05/01/2023
# Purpose:                      Eductional


# Declaration of variables

# Declaration of functions

# Script checks for the existence of files or directories, then creates it if it does not exist.

# Create an array of files/directories to check.


FILES_arr=( "file1" "file2" "dir1" "dir2" )
dir3=dir3
# Main
# Loop through the array for i in "${FILES[@]}"

# Check if the file or directory exists
if [[ -e "${FILES_arr[@]}" ]];
 then
    echo "file exists"
 else
if [[ "${FILES_arr[@]}" == *"file"* ]];
  then
      touch "${FILES_arr[@]}"
      echo "creating ${FILES=arr[@]}"
 else 
   # Create the file or directory if none exists
    mkdir "$dir3"
  fi
fi

# End
