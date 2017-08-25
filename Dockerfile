FROM ubuntu:16.04

WORKDIR /test

ADD test /test


RUN apt-get -qq update
RUN apt-get -qq -y install curl

RUN apt-get install -y build-essential libssl-dev 

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get install -y nodejs
RUN node -v

RUN npm install -g standard 
RUN npm install -g @angular/cli

EXPOSE 3000

CMD ["node", "app.js"]
