FROM registry.access.redhat.com/ubi8/nodejs-12

RUN mkdir app

WORKDIR app

ENV NODE_ENV=production

//COPY src/package*.json ./

RUN npm ci

COPY . .
CMD ["npm", "start"]
