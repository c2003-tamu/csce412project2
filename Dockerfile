FROM nginx:stable-alpine
COPY ./nginx_html/index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
