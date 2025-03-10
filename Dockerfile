FROM --platform=linux/amd64 node:19-bullseye-slim

WORKDIR /app

RUN npm install -g nodemon

COPY ./app/package.json ./package.json

RUN yarn install

COPY ./app .

RUN yarn build

EXPOSE 3000

CMD ["yarn","start:watch"]
