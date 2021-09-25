FROM alpine

RUN apk add --update nodejs npm curl

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 8080

ENTRYPOINT [ "node" , "./app.js" ]
