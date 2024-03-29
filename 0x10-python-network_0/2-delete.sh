#!/bin/bash

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Send a DELETE request to the URL using curl and display the body of the response
curl -s -X DELETE "$1"
echo ""

