# base image
FROM node:14-alpine

WORKDIR /usr/app

#install dpendencies
#copy npm dependencies package
COPY ./package.json ./
RUN npm install
#copy files to container
COPY ./ ./

# default command
CMD ["npm", "start"]

#docker build -t simpleweb .        will build container
#docker run -p 8090:8090 simpleweb  will run and bind port <local port> : <container port>, ports not have to be indentical like 5000:8080l