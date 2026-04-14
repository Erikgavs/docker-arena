FROM ubuntu:24.04

COPY install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh && /tmp/install.sh

COPY config/nginx.conf /etc/nginx/sites-available/default
COPY website/ /var/www/html/

EXPOSE 22 80

CMD service ssh start && nginx -g "daemon off;"
