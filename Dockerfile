FROM node:13.2-alpine

WORKDIR /usr/src/app

COPY ./app/package.json ./
COPY ./app/build ./build
COPY ./app/server.js ./

RUN \
    npm config -g set user $(whoami) && \
    npm i --no-package-lock --no-audit

EXPOSE 80

CMD ["node", "server.js"]
