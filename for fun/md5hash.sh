#!/bin/bash

# Read the user input
read -p "Enter a string: " input_string

# Generate the MD5 hash
hash=$(echo -n "$input_string" | md5sum)

# Extract the hash value
md5_hash=${hash%% *}

# Output the MD5 hash
echo "MD5 hash: $md5_hash"
