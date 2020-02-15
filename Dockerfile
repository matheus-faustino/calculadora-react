# base image
FROM node:lts

# set working directory
WORKDIR /application

# add `/application/node_modules/.bin` to $PATH
ENV PATH /application/node_modules/.bin:$PATH

# install and cache application dependencies
COPY package.json /application/package.json
RUN npm install --silent
RUN npm install react-scripts -g --silent

# start application
CMD ["npm", "start"]