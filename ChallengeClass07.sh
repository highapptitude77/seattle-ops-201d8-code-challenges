#!/bin/bash

# Script Name:                  Ops Challenge 07
# Author:                       Wayne Brandon   
# Date of latest revision:      05/02/2023
# Purpose:                      Educational (System Information)

# Declaration of variables

# Declaration of functions


# Main

# CPU 
cpu_arr=("*-CPU" "Product" "Vendor" "Physical ID" "Bus info" "Width")

# RAM 
ram_arr=("*-Random" "Description" "Physical ID" "Size")

# Declaration of Functions
#shows cpu info
cpu(){
    for i in "${cpu_arr[@]}";
    do     #grep will show specific data
        lshw -C cpu | grep "$i"
   done    
}
#Declaration of Functions
#shows ram info
ram(){
    for i in "${ram_arr[@]}";
    do
        lshw -C memory | grep -v "BIOS" | grep -v "0" | grep -v "128" | grep -v "128" | grep "$i"
    done
}





# End
