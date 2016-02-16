FROM nginx

ADD certs/server.crt /etc/nginx/server.crt
ADD certs/server.key /etc/nginx/server.key
ADD conf/default.conf /etc/nginx/conf.d/default.conf
ADD html /usr/share/nginx/html

EXPOSE 80
EXPOSE 443
