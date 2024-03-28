#!/bin/bash

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Send a HEAD request to the URL using curl and store the response status code
response=$(curl -sI "$1")

# Check if curl command was successful
if [ $? -ne 0 ]; then
	    echo "Failed to execute curl command. Please check the URL and try again."
	        exit 1
fi

# Extract the status code from the response
status_code=$(echo "$response" | head -n 1 | awk '{print $2}')

# Check if status code is empty or not a number
if [ -z "$status_code" ] || ! [[ "$status_code" =~ ^[0-9]+$ ]]; then
	    echo "Failed to retrieve response status code. Please check the URL and try again."
	        exit 1
fi

# Check if status code is 200 (OK)
if [ "$status_code" -eq 200 ]; then
	    # Extract the content length from the response
	        content_length=$(echo "$response" | grep -i content-length | awk '{print $2}')
		    
		    # Check if content length is empty or not a number
		        if [ -z "$content_length" ] || ! [[ "$content_length" =~ ^[0-9]+$ ]]; then
				        echo "Failed to retrieve content length. Response may not have a body."
					        exit 1
						    fi
						        
						        echo "$content_length"
						else
							    echo "Unable to retrieve response size. Status code: $status_code"
fi

