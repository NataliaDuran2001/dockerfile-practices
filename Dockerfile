

#FROM --platform=$BUILDPLATFORM node:19.2-alpine3.16
FROM node:19.2-alpine3.16

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

RUN npm run test

#eliminar archivos y directorios no necesarios para producción
RUN rm -rf tests && rm -rf node_modules

#unicamente las dependencias de prod
RUN npm install --prod

CMD [ "node", "app.js" ]