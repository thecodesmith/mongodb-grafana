FROM node:lts-alpine

WORKDIR /app
COPY dist/server /app
COPY package.json /app
COPY package-lock.json /app

RUN npm install --production

VOLUME /app/config
EXPOSE 3333

CMD node mongodb-proxy.js
