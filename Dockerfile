FROM postgres:latest

COPY postgresql.conf /postgresql.conf
COPY mv-config.sh /docker-entrypoint-initdb.d
# COPY init.sql /docker-entrypoint-initdb.d

EXPOSE 5432