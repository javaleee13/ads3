FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html
#COPY te.gif /usr/share/nginx/html
COPY ads.html /usr/share/nginx/html
