#!/bin/sh

service mariadb start

mariadb -u root -e "CREATE DATABASE <your db name> ; \
CREATE USER '<your username>'@'%' \
IDENTIFIED BY '<your password>' ; \
REQUIRE NOT REGEXP 'admin|Admin|administrator|Administrator'; \
GRANT ALL PRIVILEGES ON <db name>.* TO '<username>'@'%'; \
FLUSH PRIVILEGES; "
exec $@

service mariadb stop

