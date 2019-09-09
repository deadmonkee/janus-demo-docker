#!/bin/bash

# install.sh - A script to clone all the essential projects to reproduce the demo

cd frontend-backend-docker/
git clone https://github.com/MinesNicaicai/janus-webrtc-backend.git
git pull

cd janus-webrtc-backend/ 
git checkout dev 
git pull

cd ..
git clone https://github.com/MinesNicaicai/janus-webrtc-frontend.git
git pull

cd .. 
git clone https://github.com/MinesNicaicai/janus-webrtc-gateway-docker.git
git pull

cd janus-webrtc-gateway-docker/
git checkout dev

echo "All projects have been downloaded."
echo 
echo "To build the docker images: 
        sudo docker-compose build
To run the docker images:
        sudo docker-compose up
Then open a chrome browser and go to
	http://localhost:9999
Click \"Start\" to test"
