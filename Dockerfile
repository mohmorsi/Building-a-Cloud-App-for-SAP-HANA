FROM node:10

WORKDIR /usr/src/app

COPY package.json package*.json ./
COPY .npmrc ./

RUN npm install --only=production

COPY . .

CMD [ "npm", "start" ]
