FROM node:latest
RUN apt-get update -qq && apt-get install -y build-essential vim
ENV TZ Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LANG C.UTF-8
WORKDIR /bustime
RUN npm -g install @vue/cli
RUN yarn install
COPY . .
