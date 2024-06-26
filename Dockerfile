FROM registry.access.redhat.com/ubi9/nodejs-18-minimal:1
 
WORKDIR /opt/app-root/src

COPY package.json /opt/app-root/src

RUN npm install --only=prod

COPY app.js /opt/app-root/src
COPY public /opt/app-root/src/public

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

CMD ["npm", "start"]

