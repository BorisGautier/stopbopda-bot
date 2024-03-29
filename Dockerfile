FROM node:14-buster-slim

RUN mkdir -p /home/app

WORKDIR /home/app

COPY package.json .
COPY build ./build

RUN yarn install --frozen-lockfile --production

EXPOSE 3000

ENTRYPOINT ["yarn", "prod"]