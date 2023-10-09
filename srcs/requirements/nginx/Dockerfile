FROM debian:11

RUN apt update && apt upgrade -y \
    && apt install nginx openssl -y && apt clean

COPY  ./conf/default.conf /etc/nginx/sites-enabled

COPY  ./tools/certificate.crt /etc/ssl

COPY ./tools/private.key  /etc/ssl

RUN chmod 755 /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;"]