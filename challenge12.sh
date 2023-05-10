# Script Name:                  Ops Challenge - Powershell IP Analysis

# Author:                       Wayne Brandon
# Date of latest revision:      05/09/2023
# Purpose:                      Education  (Challenge 12)

# Declaration of variables

# A variable is a unit of memory in which values are stored. In              # PowerShell, variables are represented by text strings that begin 
# with a dollar sign ($)
 $path = “C:\Windows\System32”   $file = “network_report.txt”   
 

# Declaration of functions

# A function in PowerShell is declared with the function keyword  
# followed by the function name and then an open and closing curly  
# brace. The code that the function will execute is contained within # # those curly braces.

# Create a local file called network_report.txt that holds the 

# Main

# contents of an ipconfig /all command.

Function Network-Report {
 New-Item $path\$file
 Ipconfig /all |Out-File $path\file
# Use Select-String to search network_report.txt and return only the IP version 4 address.
# Select-String finds text in strings and files and displays the out 
# put
# The Pattern parameter specifies the text to match

 $path\$file | Select-String -Pattern “IPv4”

# Remove the network_report.txt when you are finished searching it. 

# The Remove-Item cmdlet deletes one or more items. Because it is   
# supported by many providers, it can delete many different types of 
# items, including files, folders, registry keys, variables,
# aliases, and functions.In file system drives, the Remove-Item cmdlet 
# deletes files and folders.

 Remove-Item $path\$file
}

# End 
