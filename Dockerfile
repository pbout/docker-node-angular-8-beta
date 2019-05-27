# Base Image
FROM alpine

ENV CHROME_BIN /usr/bin/chromium-browser

RUN apk update \
    && apk update
    && apk upgrade \
    && apk add --no-cache bash \
    && apk add chromium \
    && apk add nodejs \
    && apk add nodejs-npm \
    && npm install -g @angular/cli 
