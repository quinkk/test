FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 3001:80