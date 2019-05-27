# Base Image
FROM node:11.0-alpine

RUN apk update && apk upgrade && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk add --no-cache bash chromium@edge nss@edge

ENV CHROME_BIN /usr/bin/chromium-browser
ENV SASS_BINARY_NAME=linux-x64-67

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && npm install -g @angular/cli 
   
