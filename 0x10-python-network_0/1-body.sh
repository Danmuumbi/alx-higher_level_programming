#!/bin/bash

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Send a GET request to the URL using curl and display the body of the response if status code is 200
curl -s -o /tmp/response.txt -w "%{http_code}" "$1" > /dev/null

status_code=$(cat /tmp/response.txt)
if [ "$status_code" -eq 200 ]; then
	    curl -s "$1"
	        echo ""
	else
		    echo "No response body. Status code: $status_code"
fi

# Remove temporary file
rm -f /tmp/response.txt

