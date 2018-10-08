FROM node:10.6.0

RUN apt-get update && apt-get install -y rsync

RUN yarn global add nodemon

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn

# rsync node_modules to prevent stale modules
RUN rsync -r /usr/src/app/node_modules/ /node_modules --delete
