#!/bin/bash

set -ex

# Iterate over each argument provided to the script
for url in "$@"
do
  # Use 'cut' to split the URL into parts and get the directory path without the base URL
  dir_path=$(echo "$url" | cut -d'/' -f4-)

  # Create the directory structure
  # '--' is used to signify the end of options, so that directories starting with a '-' won't be interpreted as options
  mkdir -p -- "$dir_path"

  # Change to the directory and clone the repository
  # Using '&&' to ensure 'git clone' runs only if 'cd' is successful
  (cd "$dir_path" && git lfs clone "$url" . && rm -r .git && rm -f ./pytorch_model*.bin)
done
