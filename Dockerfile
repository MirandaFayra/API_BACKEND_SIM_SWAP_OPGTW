FROM node:20
WORKDIR /src
COPY /package*.json ./
RUN npm install
COPY /src .
EXPOSE 8080
CMD ["npm", "start"]