read -p "Enter a file name: " filename
if [[ -f "$filename" ]]; then
    echo "Contents of $filename:"
    echo "---------------------"
    cat "$filename"
else
    echo "File $filename does not exist."
fi
