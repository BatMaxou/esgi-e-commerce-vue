FROM node:18 as main

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

EXPOSE 8080

FROM main as builder

COPY . /app

RUN npm run build

FROM main as dev

COPY . /app

CMD ["npm", "run", "dev"]

FROM node:18-alpine3.21 as prod

WORKDIR /app

COPY ./package.json /app/package.json
COPY ./server.cjs /app/server.cjs
COPY --from=builder /app/dist /app/dist

RUN npm install express --only=production

EXPOSE 8080

CMD ["npm", "run", "start"]
