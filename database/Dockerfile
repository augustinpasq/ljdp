FROM mysql:8.4.6

LABEL org.opencontainers.image.source=https://github.com/augustinpasq/ljdp

COPY creationScript.sql /docker-entrypoint-initdb.d/init.sql
