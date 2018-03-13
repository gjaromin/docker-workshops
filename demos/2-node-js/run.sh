#!/bin/bash

docker run -it -d --name node-js-app --rm -p 3000:3000 -v "$PWD":/src -w /src node:latest node app.js