FROM node:16.13.0-alpine

RUN addgroup -S app && adduser -S -G app app
USER app
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
ENV AY_LAr=23
EXPOSE 3000
CMD [ "npm","start","--","--host","0.0.0.0"]