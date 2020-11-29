FROM node:12-stretch

WORKDIR /usr/src/app/

RUN apt-get update \
    && apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev \
    && npm install -g canvas

CMD ["npm", "start"]
