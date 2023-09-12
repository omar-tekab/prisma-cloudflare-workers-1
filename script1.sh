#!/bin/bash

# Specify the text you want to add
text_to_add="This text was added automaticalfffffffffffffffffffly."

# Specify the file path
file_path="omar.txt"

# Check if the file exists
if [ -f "$file_path" ]; then
  # Append the text to the file
  echo "$text_to_add" >> "$file_path"
  echo "Text added to $file_path."
else
  echo "The file $file_path does not exist."
fi
