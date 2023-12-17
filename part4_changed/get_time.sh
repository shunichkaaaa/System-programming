#!/bin/bash

ninja_build_dir="./ninja-build"

# Change to the ninja-build directory
if ! cd "$ninja_build_dir"; then
    echo "Error: Could not change to the ninja-build directory." >&2
    exit 1
fi

cd ninja-build

# Record the start time
start_time=$(date +%s)

# Build commands
cmake -G Ninja ..
ninja

# Record the end time
end_time=$(date +%s)

# Calculate the duration in seconds
duration=$((end_time - start_time))

# Print the duration
echo "Build duration: $duration seconds"
