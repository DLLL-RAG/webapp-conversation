FROM --platform=linux/amd64 node:19-bullseye-slim

WORKDIR /app

COPY ./app .

RUN yarn install
RUN yarn build

EXPOSE 3000

CMD ["yarn","start:watch"]
