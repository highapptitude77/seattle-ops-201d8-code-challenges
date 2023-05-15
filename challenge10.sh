# Script Name:                  Ops Challenge - System Process Commands
# Author:                       Wayne Brandon
# Date of latest revision:      05/13/2023
# Purpose:                      Educational

# Declaration of variables

# Declaration of functions


# Main

# This displays all running processes on system by highest CPU consumption
Get-Process | Sort-Object -Property CPU -Descending

# This displays the running processes sorted by ID higest to lowest
Get-Process | Sort-Object -Property ID -Descending

# This displays the top 5 processes by working set
Get-Process | Sort-Object -Property WS | Select-Object -First 5

# This starts Microsoft Edge browser to a specified website 
Start-Process -FilePath "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList '--start-fullscreen "https://owasp.org/www-project-top-ten"'

# Start the process Notepad ten times using a for loop
for ($i = 1 ; $i -le 10 ; $i++) {
    Start-Process notepad
}

# Stops notepad app
Stop-Process -Name "Notepad"

# Stops running process by prcocess ID #
Stop-Process -ID 6984 (Notepad)


# End
