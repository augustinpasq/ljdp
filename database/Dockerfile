FROM mysql:8.4.6

LABEL org.opencontainers.image.source=https://github.com/augustinpasq/ljdp

HEALTHCHECK --interval=10s --timeout=5s --start-period=60s --retries=5 \
  CMD mysqladmin ping -h localhost -u${DATABASE_USER} -p${DATABASE_PASSWORD} || exit 1

COPY creationScript.sql /docker-entrypoint-initdb.d/init.sql
