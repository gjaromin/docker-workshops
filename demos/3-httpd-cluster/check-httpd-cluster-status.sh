#!/bin/bash

HOST_ADDRESS="http://ec2-18-221-145-23.us-east-2.compute.amazonaws.com"


for i in {001..101}; do
	url=$HOST_ADDRESS:7$i
        echo "Checking  #: "$url
	curl -Is $url | head -1
	#curl -I -w "%{http_code}\n" $url ; echo "Exit code: $?" #more detailed	
done
