FROM node:alpine

ARG PORT
ENV PORT ${PORT:-8000}

COPY . /app

WORKDIR /app

EXPOSE 8000

CMD node index.js
