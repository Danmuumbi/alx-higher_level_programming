#!/bin/bash

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Send an OPTIONS request to the URL using curl and display the allowed HTTP methods
curl -s -I -X OPTIONS "$1" | grep "Allow:" | awk '{print substr($0, index($0,$2))}'

