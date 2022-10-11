FROM --platform=linux/amd64 node:11.15

WORKDIR /app

RUN npm install nodemon -g

COPY package.json .

RUN npm install

COPY . .

CMD [ "npx", "nodemon", "app.js" ]