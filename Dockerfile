FROM node:10.6.0

RUN yarn global add nodemon

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn
