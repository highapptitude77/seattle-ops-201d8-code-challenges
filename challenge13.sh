#!/bin/bash

# Script Name:                  Ops Challenge - Domain Analyzer
# Author:                       Wayne Brandon
# Date of latest revision:      05/10/2023
# Purpose:                      Educational



# Declare Variables
# AddToFile=">> fetchDom.txt"



# Declare Functions
removeDom(){
  rm -rf fetchDom.txt
}

WhoDis(){
  whois "$userInput"
  whois "$userInput" >> fetchDom.txt
}

DigDis(){
  dig "$userInput"
  dig "$userInput" >> fetchDom.txt
}

HostDis(){
  host "$userInput"
  host "$userInput" >> fetchDom.txt
}

NslDis(){
  nslookup "$userInput"
  nslookup "$userInput" >> fetchDom.txt
}


# Create
removeDom
# Main

# End
fetchDom(){
  echo "Please enter a domain name"
  read -r userInput 
  WhoDis
  # whois "$userInput"
  # whois "$userInput" >> fetchDom.txt
  DigDis
  # dig "$userInput"
  # dig "$userInput" >> fetchDom.txt
  HostDis
  # host "$userInput"
  # host "$userInput" >> fetchDom.txt
  NslDis
  # nslookup "$userInput"
  # nslookup "$userInput" >> fetchDom.txt
}

fetchDom

# linux
xdg-open fetchDom.txt

# mac
open fetchDom.txt