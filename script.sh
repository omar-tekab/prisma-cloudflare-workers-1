#!/bin/bash

# Text to be added to the pre-commit hook
text_to_add="#!/bin/bash\n\ntext_to_add=\"This text was added automatically.\"\n\ntarget_file=\"omar.txt\"\n\necho \"\$text_to_add\" >> \"\$target_file\"\n\nexit 0\n"

# Path to the pre-commit hook
pre_commit_hook=".git/hooks/pre-commit"

# Check if the pre-commit hook file exists
if [ -f "$pre_commit_hook" ]; then
  # Append the text to the pre-commit hook file
  echo -e "$text_to_add" > "$pre_commit_hook"
  chmod +x "$pre_commit_hook"
  echo "Text added to the pre-commit hook."
else
  echo "The pre-commit hook file does not exist."
fi