
FROM    ubuntu:trusty

MAINTAINER Philipp Hoenisch philipp@hoenisch.at

# Install Node.js and npm and haproxy
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs vim


# Bundle app source
COPY . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE  3000

#run start script
CMD ["node","/src/index.js"]
