FROM postgres:10.3

ENV PGDATA /var/lib/postgresql/data

COPY init.sql /docker-entrypoint-initdb.d

EXPOSE 5432