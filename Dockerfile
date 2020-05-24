FROM registry.access.redhat.com/ubi8/nodejs-12

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

ENV NODE_ENV=production

COPY /usr/src/package*.json ./

RUN npm ci

COPY . .
CMD ["npm", "start"]
