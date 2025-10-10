FROM node:24

RUN apt update && \
    apt install -y graphicsmagick libpng-dev libjpeg-dev libwebp-dev && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY --chown=node:node . .

EXPOSE 3001

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

CMD ["docker-entrypoint.sh"]
