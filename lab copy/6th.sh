#!/bin/bash

# Initialize sum variable
sum=0

echo "Enter 10 numbers:"

# Loop to read 10 numbers
for ((i=1; i<=10; i++)); do
    read -p "Number $i: " number
    sum=$((sum + number))
done

# Calculate average
average=$(echo "scale=2; $sum / 10" | bc)

echo "Sum of the numbers: $sum"
echo "Average of the numbers: $average"
