FROM node:21-alpine

WORKDIR /app/

COPY public/ /app/public
COPY src/ /app/src
COPY package.json /app/package.json

RUN npm install

CMD [ "npm", "start" ]
# NPM starts at port 3000
# To run use command `docker run -dp 3000:3000 cart`