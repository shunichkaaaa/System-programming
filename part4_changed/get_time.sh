#!/bin/bash

ninja_build_dir="ninja-build"

# Check if the directory exists
if [ ! -d "$ninja_build_dir" ]; then
    echo "Error: Directory $ninja_build_dir does not exist." >&2
    exit 1
fi

cd "$ninja_build_dir"

# Record the start time
start_time=$(date +%s.%N)

# Build commands
cmake -G Ninja ..
ninja

# Record the end time
end_time=$(date +%s.%N)

# Calculate the duration in seconds
duration=$(echo "$end_time - $start_time" | bc)

# Print the duration
echo "Build duration: $duration seconds"
