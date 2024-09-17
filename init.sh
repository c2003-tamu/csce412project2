# Update and upgrade
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y

# Pull nginx image
sudo docker pull nginx

# Start the containers with modified HTML before starting each one
sed -i "s|<strong>.*</strong>|<strong>8080</strong>|g" ./nginx_html/index.html
sudo docker run --name mynginx1 -d -p 8080:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

sed -i "s|<strong>.*</strong>|<strong>8081</strong>|g" ./nginx_html/index.html
sudo docker run --name mynginx2 -d -p 8081:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

sed -i "s|<strong>.*</strong>|<strong>8082</strong>|g" ./nginx_html/index.html
sudo docker run --name mynginx3 -d -p 8082:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

sed -i "s|<strong>.*</strong>|<strong>8083</strong>|g" ./nginx_html/index.html
sudo docker run --name mynginx4 -d -p 8083:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

sed -i "s|<strong>.*</strong>|<strong>8084</strong>|g" ./nginx_html/index.html
sudo docker run --name mynginx5 -d -p 8084:80 -v ~/csce412project2/nginx_html:/usr/share/nginx/html nginx

# Restore original value
sed -i "s|<strong>.*</strong>|<strong>%%number%%</strong>|g" ./nginx_html/index.html
