FROM postgres
ENV POSTGRES_PASSWORD adminpostgres 
ENV POSTGRES_DB postgres 
COPY init-greeting.sql /docker-entrypoint-initdb.d/