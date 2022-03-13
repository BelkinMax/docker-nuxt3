FROM node:14

RUN mkdir -p /nuxt-app && chmod -R 777 nuxt-app
WORKDIR /nuxt-app

RUN apt-get -y update && apt-get install -y git

COPY package.json .
RUN npm install

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

VOLUME [ "/nuxt-app/node_modules" ]

CMD [ "npm", "run", "dev" ]