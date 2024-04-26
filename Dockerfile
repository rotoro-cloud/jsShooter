ARG node_version=14

FROM node:${node_version}

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 80

CMD ["npm", "start"]
