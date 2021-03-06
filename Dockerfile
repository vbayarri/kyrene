FROM node:5.5.0-slim

# Create app directory
RUN mkdir -p /usr/stc/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY src /usr/src/app

EXPOSE 3000

CMD ["npm", "start"]