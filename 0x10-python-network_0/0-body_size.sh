#!/bin/bash

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Send a GET request to the URL using curl and get the size of the response body
response_size=$(curl -sI "$1" | grep -i content-length | awk '{print $2}')

# Check if response_size is empty
if [ -z "$response_size" ]; then
	    echo "Unable to retrieve response size"
	        exit 1
fi

echo "$response_size"

