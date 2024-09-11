#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status

# Get the directory path from the first argument
path="${1}"

# Find all .sh files in the specified directory and subdirectories
files=$(find "$path" -name "*.sh")

# Count the total number of .sh files
total=$(echo "$files" | wc -l)
count=1 # Initialize a counter for file processing

echo "::group::Formatting Shell Scripts"

# Iterate over each found file
echo "$files" | while read -r file; do
	# Check if the file name is not empty
	if [ -n "$file" ]; then
		# Display progress with current file and total count
		printf "[%d/%d]: %s\n" "$count" "$total" "$file"

		# Format the file using shfmt (a shell script formatter)
		shfmt -w "$file"

		# Increment the counter
		count=$((count + 1))
	fi
done

echo "::notice::All shell scripts have been successfully formatted."

echo "::endgroup::"
