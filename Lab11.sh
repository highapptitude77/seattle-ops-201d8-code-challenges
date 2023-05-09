# Script Name:                  Ops Challenge - Automated Endpoint Configuration
# Author:                       Wayne Brandon
# Date of latest revision:      05/08/2023
# Purpose:                      Educational 

# Declaration of variables

# Declaration of functions


# Main
# Enable File and Printer Sharing
Set-NetFirewall Rule -DisplayGroup "File And Printer Sharing" -Enable True

# Allow ICMP traffic
netsh advfirewall firewall add rule name="Allow incoming pV4 echo request" dir=in action=allow protocol=icmpv4

# Enable Remote management
Enable-PSRemoting 

# Remove bloatware
Get-AppxPackage -Name $MsftBloatApp -AllUsers | Remove-AppPackage -AllUsers

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1, an insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $False
# End

