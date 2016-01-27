FROM nginx

ADD certs/cert.pem /etc/nginx/cert.pem
ADD certs/key.pem /etc/nginx/key.pem
ADD conf/default.conf /etc/nginx/conf.d/default.conf
ADD html /usr/share/nginx/html

EXPOSE 80
EXPOSE 443
