FROM node:12-alpine
MAINTAINER Producteca

COPY ./package* ./

RUN npm install
