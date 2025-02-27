FROM --platform=linux/arm64/v8 node:17

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8004

CMD [ "npm", "start" ]
