#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install docker.io -y

sudo docker pull nginx

sudo docker run --name mynginx1 -d -p 8080:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

sudo docker run --name mynginx2 -d -p 8081:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

sudo docker run --name mynginx3 -d -p 8082:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

sudo docker run --name mynginx4 -d -p 8083:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

sudo docker run --name mynginx5 -d -p 8084:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx
