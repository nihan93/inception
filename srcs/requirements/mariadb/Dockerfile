FROM debian:11

RUN apt-get update && apt-get upgrade -y \
    && apt-get install mariadb-server systemctl vim -y

COPY ./tools/script.sh /

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/

RUN chmod +x /script.sh 

RUN ./script.sh

CMD ["mariadbd"]