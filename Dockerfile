FROM node:18-alpine3.17

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY . .

ENV MONGO_URI=uriPlaceholder
ENV MONGODB_USER_NAME=usernamePlaceholder
ENV MONGODB_PASS=passwordPlaceholder

EXPOSE 3000

CMD [ "npm", "start" ]