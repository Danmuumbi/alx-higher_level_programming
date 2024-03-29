#!/bin/bash

# Check if the user provided a URL
if [ -z "$1" ]; then
	    echo "Usage: $0 <URL>"
	        exit 1
fi

# Define the parameters
email="test@gmail.com"
subject="I will always be here for PLD"

# Send a POST request to the URL with the specified parameters using curl and display the body of the response
response=$(curl -s -X POST -d "email=$email&subject=$subject" "$1")

# Display the body of the response
echo "$response"

