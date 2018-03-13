#!/bin/bash

#todo update port number calculation

CONTAINERS_NUMBER=$1

#for ((i=10; i <= 50; i++)); do
for i in {001..$CONTAINERS_NUMBER}; do
        echo "Starting container #: "$i
        docker run -idt -p 7${i}:80 -v /docker-ebs:/usr/local/apache2/htdocs/ --rm --name httpd-cluster-7${i} httpd
done
