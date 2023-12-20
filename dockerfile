FROM node:20

WORKDIR /app

COPY . .

RUN yarn install

RUN yarn lint

RUN yarn test

RUN yarn build

CMD yarn start