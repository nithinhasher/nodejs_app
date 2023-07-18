# Dockerfile

FROM node:14-alpine AS base

WORKDIR /app

COPY package*.json ./
COPY ./src ./

RUN npm install --production

COPY . .

CMD ["npm", "start"]
