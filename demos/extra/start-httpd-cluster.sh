#!/bin/bash

#todo update port number calculation

for i in {001..30}; do
        echo "Starting container #: "$i
        docker run -idt -p 7${i}:80 -v /docker-ebs:/usr/local/apache2/htdocs/ --rm --name httpd-cluster-7${i} httpd
	#sleep 5
done
