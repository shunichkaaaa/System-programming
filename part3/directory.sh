!/bin/bash

target_directory="target_dir"

# Check the existence of target directory
if [ ! -d "$target_directory" ]; then
    echo "Target directory $target_directory is not found."
    exit 1
fi

# Iterate over the contents of the targer directory 
for item in "$target_directory"/*; do
    if [ -d "$item" ]; then
        # If the directory is found
        current_dirname=$(basename "$item")
        echo "$current_dirname is a directory."
    elif [ -f "$item" ]; then
        # If the file is found
        current_filename=$(basename "$item")
        new_directory="${target_directory}/${current_filename}_dir"

        # Create new directory
        mkdir "$new_directory"

        # Move the file to the new directory based on its name
        mv "$item" "$new_directory/"

        echo "$current_filename file is moved to $new_directory directory."
    fi
done

