#!/bin/bash
# This script takes a URL as an argument, sends a request to that URL using curl in silent mode, and displays the size of the body of the response in bytes.

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Send a GET request to the URL using curl in silent mode and get the size of the response body
curl -sI "$1" | grep -i Content-Length | awk '{print $2}' | tr -d '\r\n'

