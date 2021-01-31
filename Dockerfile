from node:14

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

COPY ./server.js ./
COPY ./lib ./lib

expose 3000

CMD [ "node", "server.js"]
