FROM node:21-alpine

WORKDIR /mystore/

COPY .  .
COPY package.json /app

RUN npm install

CMD [ "npm", "start" ]
