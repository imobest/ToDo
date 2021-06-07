FROM node:8.11.2
RUN mkdir -p /usr/src/TODO
COPY dist /usr/src/TODO/dist
COPY server.js /usr/src/TODO/server.js
COPY deploy-package.json /usr/src/TODO/package.json
WORKDIR /usr/src/TODO
RUN npm install
EXPOSE 80
CMD ["node", "server.js"]