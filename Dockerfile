FROM ubuntu:latest
WORKDIR /usr/apps/hello-docker/
RUN apt-get update -y
#RUN apk add node.js
RUN apt-get install node.js -y
RUN apt-get install npm -y 
RUN npm install -g http-server
ADD . /usr/apps/hello-docker/
ADD index.html /usr/apps/hello-docker/index.html
CMD ["http-server", "-s"]
