#!/bin/bash

# Check if URL is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send DELETE request using curl and display response body
curl -sX DELETE "$1"

# Add newline for cleaner output
echo ""
