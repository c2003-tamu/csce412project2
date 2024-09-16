#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt install docker.io

sudo docker pull nginx

sudo docker run --name mynginx -d -p 80:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx
