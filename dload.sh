#!/bin/bash

# Check if there are arguments provided
if [ $# -eq 0 ]; then
    echo "No urls provided. Usage: $0 url1 [url2 ...]"
    exit 1
fi

# Call the subscript with the file arguments and run it in the background using nohup
nohup ./dload_bak.sh "$@" >dload.out 2>&1 &

echo "Downloads launched in the background."
echo "tail -f dload.out"
