#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Using: sh $0 <input_directory> <output_directory>"
	exit 1
fi

input_directory="$1"
output_directory="$2"

if [ ! -d "$input_directory" ]; then
	echo "Input directory does not exist."
	exit 1
fi

if [ ! -d "$output_directory" ]; then
	echo "Output directory does not exist."
	exit 1
fi

echo "The copying has started..."

find "$input_directory" -type f -print0 | while IFS= read -r -d '' file; do
	filename=$(basename "$file")
	destination="$output_directory/$filename"

	if [ -f "$destination" ]; then

		extension="${filename##*.}"
		file_no_extension="${filename%.*}"
		index=1

		while [ -f "$output_directory/$file_no_extension$index.$extension" ]; do
			((index++))
		done

		cp "$file" "$output_directory/$file_no_extension$index.$extension"
	else
		cp "$file" "$destination"
	fi
done

echo "Files copied from $input_directory to $output_directory"