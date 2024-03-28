#!/bin/bash
# This script takes a URL as an argument, sends a GET request to that URL using curl in silent mode, and displays the body of the response if the status code is 200.

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Send a GET request to the URL using curl in silent mode and display the body of the response if status code is 200
curl -s -o /tmp/response.txt -w "%{http_code}" "$1" > /dev/null

# Extract the status code from the response
status_code=$(cat /tmp/response.txt)

# Check if status code is 200 and display the body of the response
if [ "$status_code" -eq 200 ]; then
	    curl -s "$1"
	        echo ""
fi

# Remove temporary file
rm -f /tmp/response.txt

