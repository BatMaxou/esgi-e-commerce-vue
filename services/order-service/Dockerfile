FROM node:18 as builder

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 3002

FROM builder as dev

CMD ["npm", "run", "dev"]

FROM builder as prod

CMD ["npm", "run", "start"]
