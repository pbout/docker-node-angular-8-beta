# Base Image
FROM debian:stable-slim

RUN sudo apt-get update \
    && sudo apt-get upgrade \
    && sudo apt-get install curl software-properties-common \
    && curl -sL https://deb.nodesource.com/setup_12.x | sudo bash - \
    && sudo apt-get install nodejs
    
RUN sudo apt-get update \
    && sudo apt-get install software-properties-common \
    && sudo add-apt-repository ppa:canonical-chromium-builds/stage \
    && sudo apt-get update \
    && sudo apt-get install chromium-browser \
   
