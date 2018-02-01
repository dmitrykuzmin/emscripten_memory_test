#!/bin/bash

cd bin
printf "Server started, now you can open localhost:8000/test.html to test the running code\n"
python -m SimpleHTTPServer
