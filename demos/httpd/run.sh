#!/bin/bash

docker run -itd -p 8081:80 -v "$PWD"/data:/usr/local/apache2/htdocs/ --name httpd-8081 httpd