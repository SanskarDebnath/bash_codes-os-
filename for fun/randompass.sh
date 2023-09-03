#!/bin/bash

# Define the length of the password
password_length=150

# Define the characters to be used in the password
password_chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-= "

# Generate the password
password=""
for ((i=0; i<password_length; i++)); do
    # Choose a random character from the defined character set
    random_index=$((RANDOM % ${#password_chars}))
    random_char=${password_chars:$random_index:1}

    # Append the random character to the password
    password="${password}${random_char}"
done

# Output the generated password
echo "Generated Password: $password"
