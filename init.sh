# Update and upgrade
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y

sudo docker build -t my-nginx-container .

sudo docker run --name mynginx1 -d -p 8080:80 -v ~/csce412project2/nginx_html/8080.html:/usr/share/nginx/html/index.html my-nginx-container

sudo docker run --name mynginx2 -d -p 8081:80 -v ~/csce412project2/nginx_html/8081.html:/usr/share/nginx/html/index.html my-nginx-container

sudo docker run --name mynginx3 -d -p 8082:80 -v ~/csce412project2/nginx_html/8082.html:/usr/share/nginx/html/index.html my-nginx-container

sudo docker run --name mynginx4 -d -p 8083:80 -v ~/csce412project2/nginx_html/8083.html:/usr/share/nginx/html/index.html my-nginx-container

sudo docker run --name mynginx5 -d -p 8084:80 -v ~/csce412project2/nginx_html/8084.html:/usr/share/nginx/html/index.html my-nginx-container
