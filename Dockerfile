# Fetching the latest node image on alpine linux
FROM node:alpine AS development

# Installing dependencies
COPY package*.json .

RUN npm install

# Copying all the files in our project
COPY . .

EXPOSE 3000


# Starting our application
CMD ["npm","start"]