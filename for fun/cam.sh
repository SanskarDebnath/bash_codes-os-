#!/bin/bash

# Set the output file name and format
output_file="screenshot.png"

# Capture the whole screen and save as an image
import -window root "$output_file"

echo "Screenshot saved as $output_file"
