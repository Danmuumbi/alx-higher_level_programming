#!/bin/bash

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Send a GET request to the URL with custom header X-School-User-Id: 98 using curl and display the body of the response
curl -s -H "X-School-User-Id: 98" "$1"
echo ""

