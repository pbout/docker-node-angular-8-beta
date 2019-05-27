# Base Image
FROM node:11.0-alpine

ENV CHROME_BIN /usr/bin/chromium-browser
ENV SASS_BINARY_NAME=linux-x64-67

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash chromium nss\
    && npm install -g @angular/cli 
   
