FROM debian:bookworm-20230919

RUN apt update && apt upgrade -y \
    && apt install nginx systemctl vim openssl -y && apt clean

COPY  ./default.conf /etc/nginx/sites-enabled

COPY  ./certificate.crt /etc/ssl

COPY ./private.key  /etc/ssl

RUN chmod 755 /var/www/html

RUN chown -R www-data:www-data /var/www/html

CMD [ "nginx", "-g", "daemon off;"]