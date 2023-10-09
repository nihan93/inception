FROM debian:11

RUN apt-get update -y && apt-get upgrade -y

RUN  apt-get update -y && apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common gnupg2 wget \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/sury-php.list \
    && wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -

RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install php8.0 php8.0-fpm php8.0-mysql mariadb-client -y

RUN  wget https://wordpress.org/wordpress-6.3.tar.gz -P /var/www/

WORKDIR /var/www/

RUN tar -xzf wordpress-6.3.tar.gz && rm wordpress-6.3.tar.gz 

RUN chown -R root:root /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -P ./ \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /bin/wp

RUN mkdir /run/php

CMD ["bash"]
