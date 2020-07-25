FROM node:12 as debug

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build 

EXPOSE 8080

CMD [ "npm", "run", "debug" ]

FROM node:12 as prod

COPY . .

CMD [ "npm", "run", "start" ]