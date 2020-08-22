FROM alpine:3.7
WORKDIR /usr/apps/hello-docker/
RUN apk add --update bash
#RUN apk add node.js
RUN apk add --update node.js node.js-npm
RUN npm install -g http-server
ADD . /usr/apps/hello-docker/
ADD index.html /usr/apps/hello-docker/index.html
CMD ["http-server", "-s"]
