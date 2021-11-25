#init a base image
FROM node:12.18.1
ENV NODE_ENV=production
#defination of working directory
COPY ["package.json", "package-lock.json*", "./"]

WORKDIR /src
#run npm to install dependencies
RUN npm install
COPY . .
#run on local host:8080
EXPOSE 8080
#entery point to run the programme
ENTRYPOINT [ "node" , "./app.js" ]
