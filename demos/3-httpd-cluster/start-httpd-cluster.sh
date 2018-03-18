#!/bin/bash

#todo update port number calculation

for i in {001..100}; do
        echo "Starting container #: "$i
        #docker run -idt -p 7${i}:80 -v "$PWD"/data:/usr/local/apache2/htdocs/ --rm --name httpd-cluster-7${i} httpd
        docker run -idt -p 7${i}:80 -v "$PWD"/data:/usr/share/nginx/html --rm --name httpd-cluster-7${i} nginx
	#sleep 5
done
