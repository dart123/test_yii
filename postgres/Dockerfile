FROM postgres:latest
COPY init.sql /docker-entrypoint-initdb.d/
ENV POSTGRES_USER test_user;
ENV POSTGRES_PASSWORD test_user
ENV POSTGRES_DB test_yii