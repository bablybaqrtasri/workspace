FROM  node:16.9.1-alpine

WORKDIR /app
COPY package*.json ./

RUN npm install

COPY . .

COPY index.js .

CMD [ "npm", "start" ]