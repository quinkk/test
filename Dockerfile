FROM nginx:alpine

MAINTAINER atisak.k@gmail.com
#update 
RUN apt-get update && apt-get dist-upgrade -y \
    && rm -rf /var/lib/apt/lists/*

COPY . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN npm install
EXPOSE 3000
#run command
CMD ["npm","start"]
