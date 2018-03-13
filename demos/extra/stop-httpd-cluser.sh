#!/bin/bash

docker ps -a | grep httpd-cluster | awk '{print $1}' | xargs docker stop