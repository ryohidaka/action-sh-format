#!/bin/bash

	function greet {
name=$1
echo "Hello, $name!"
		}

	if [ $# -eq 0 ]; then
	echo "No arguments provided"
	exit 1
	fi

if [ $1 == "Alice" ]; then
echo "Welcome back, Alice!"
elif [ $1 == "Bob" ]; then
	echo "Hello Bob, good to see you."
else	echo "Hello, stranger!"
fi

	for i in {1..5}; do
echo "Number: $i"
	done

files=("file1.txt" "file2.txt" "file3.txt")
for file in "${files[@]}"; do
if [ -e $file ]; then echo "$file exists"; else echo "$file does not exist"; fi
done

date | awk '{print $1,$2,$3}'
