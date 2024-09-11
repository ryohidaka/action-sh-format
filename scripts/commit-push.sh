#!/bin/bash
set -e # Exit immediately if any command exits with a non-zero status

# Get the directory path from the first argument
path="${1}"

# Get the name from the second argument
name="${2}"

# Get the email from the third argument
email="${3}"

# Get the commit message from the fourth argument
message="${4}"

# Configure git user name locally for this repository
git config --local user.name "$name"

# Configure git user email locally for this repository
git config --local user.email "$email"

# Add the specified path (file/directory) to the git staging area
git add "$path"

# Commit the staged changes with the specified message
git commit -m "$message"

# Push the committed changes to the remote repository
git push
