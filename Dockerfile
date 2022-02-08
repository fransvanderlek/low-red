FROM nodered/node-red:latest
USER root
RUN npm install --save node-red-contrib-github-plus
USER node-red