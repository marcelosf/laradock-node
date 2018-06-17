FROM node:9.11.1-jessie

LABEL maintainer="Marcelo Schneider <schneider.fei@gmail.com>"

RUN mkdir /src

WORKDIR /src

COPY package.json ./

RUN npm install

CMD ["npm", "run", "dev"]

EXPOSE 8180
