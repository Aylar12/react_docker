FROM node:16.13.0.alpine3.14

RUN addgroup && adduser -s -G app app
USER app
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
ENV AY_LAr=23
EXPOSE 3000
CMD [ "npm","start" ]