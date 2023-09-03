read -p "Enter a name: " name
if [[ -f "$name" ]]; then
    echo "$name is a file."
elif [[ -d "$name" ]]; then
    echo "$name is a directory."
else
    echo "$name does not exist or is not a valid file/directory."
fi