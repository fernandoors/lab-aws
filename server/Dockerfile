FROM node:18-slim

RUN apt-get update && apt-get install -y \
  build-essential \
  ca-certificates \
  gcc \
  musl-dev  \
  libpq-dev \
  libffi-dev \
  zlib1g-dev \
  automake \
  iputils-ping \
  iproute2 \
  && rm -rf /var/lib/apt/lists/*

COPY ./ /root/home/ubuntu/api

WORKDIR /root/home/ubuntu/api

RUN npm install

EXPOSE 3001