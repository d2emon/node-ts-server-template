# Set node version
FROM node:12.13.0-alpine

WORKDIR /app

# Packages
COPY package*.json ./
RUN npm install

# Typescript
COPY ts*.json ./

# Folders
COPY src ./src

# Envs
ENV NODE_ENV development
# ENV NODE_PATH ./src
# ENV DEBUG d2emon-server

# Port to expose
EXPOSE 5000

# Run script
CMD npm run start
