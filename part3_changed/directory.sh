#!/bin/bash

target_directory="target_dir"

# Change to the target directory
cd "$target_directory" || exit

# Create folders named folder1 to folder100
for ((i=1; i<=1000; i++)); do
    dir_name="dir${i}"
    mkdir "$dir_name"
done

# Create files named file1 to file100
for ((i=1; i<=1000; i++)); do
    file_name="file${i}"
    touch "$file_name"
done

cd ..

# Record the start time
start_time=$(date +%s)

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

# Record the end time
end_time=$(date +%s)

# Calculate the duration in seconds
duration=$((end_time - start_time))

# Print the duration
echo "Script duration: $duration seconds"
