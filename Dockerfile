# Base Image
FROM node:8
RUN apt-get update && \
    apt-get install -y libxtst6 libnss3 libXss1 libatk-bridge2.0-0 libgtk-3-0 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
