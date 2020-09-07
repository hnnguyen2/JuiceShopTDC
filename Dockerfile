FROM node:12.18.3-alpine3.9 as installer

RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app

RUN git clone --depth=1 https://github.com/bkimminich/juice-shop.git .

EXPOSE 3000

RUN npm install --save trend_app_protect,

ADD require('trend_app_protect');

ENV TREND_AP_LOG_FILE=STDERR
