#!/bin/bash
git pull origin main
docker build -t simple-nginx /home/rupkumarpaul12g/project
docker push kumarrup/simplilearn:simple-nginx
docker pull kumarrup/simplilearn:simple-nginx
docker run -p 8082:80 simple-nginx
