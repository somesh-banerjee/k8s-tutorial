FROM node:alphine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

# Copy the appropriate version of the application based on build argument
ARG APP_VERSION
COPY ./${APP_VERSION} ./app

EXPOSE 3000

CMD ["node", "app/server.js"]
