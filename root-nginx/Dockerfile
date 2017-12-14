FROM nginx:latest
MAINTAINER Jan van Brügge

COPY default.conf /etc/nginx/conf.d/default.conf
COPY mime.types /etc/nginx/mime.types
COPY nginx.conf /etc/nginx/nginx.conf
COPY snippets/* /etc/nginx/snippets/
COPY sites/* /etc/nginx/site-enabled/
