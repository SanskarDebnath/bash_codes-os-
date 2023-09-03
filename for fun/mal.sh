#!/bin/bash

# Retrieve the IP address
ip_address=$(ipconfig | awk '/IPv4 Address/ {gsub(".*: ", "", $NF); print $NF}')

# Output the IP address
echo "IP address: $ip_address"
