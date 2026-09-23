#download image
FROM node:17.6-alpine
#add dependencies what cousing npm install on line 11
#RUN apk add --no-cache autoconf automake libtool
RUN apk add --no-cache \
    autoconf \
    automake \
    libtool \
    make \
    gcc \
    g++ \
    libc-dev \
    pkgconf \
    zlib-dev \
    file \
    nasm
#sets workdir
WORKDIR /home/n3/Proj/uastudio.site
#copy package JSON
COPY package*.json ./
#install dependencies
#RUN uses as command during we building image
RUN npm install
#install GULP CLI
RUN npm install --global gulp-cli
#copy everything
COPY . .

ENV PORT=9000

EXPOSE 9000
#uses for already build image
CMD ["gulp","doAll"]
