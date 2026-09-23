FROM node:17-alpine

WORKDIR /home/n3/Proj/uastudio.site

COPY package*.json ./

RUN npm install

RUN npm install --global gulp-cli
