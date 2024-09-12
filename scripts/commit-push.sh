#!/bin/bash
set -e # Exit immediately if any command exits with a non-zero status

# Get arguments from the inputs
path="${1}"
name="${2}"
email="${3}"
message="${4}"

# Configure git user name locally for this repository
git config --local user.name "$name"

# Configure git user email locally for this repository
git config --local user.email "$email"

# Add the specified path (file/directory) to the git staging area
git add "$path"

# Check if there are any staged changes; exit if none
if git diff --cached --exit-code >/dev/null; then
    echo "No changes to commit. Skipping commit and push."
    exit 0
fi

# Commit the staged changes with the specified message
git commit -m "$message"

# Push the committed changes to the remote repository
git push
