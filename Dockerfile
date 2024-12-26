FROM node:alpine3.21

WORKDIR /app
RUN corepack enable
COPY package.json /app
COPY pnpm-lock.yaml /app

RUN pnpm install

COPY . /app

CMD ["pnpm", "start"]
