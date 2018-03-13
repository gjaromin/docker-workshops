#!/bin/bash

FILE_SIZE_MB=$1

fallocate -l $FILE_SIZE_MB file_${FILE_SIZE_MB}_MB.txt
