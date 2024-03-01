FROM mcr.microsoft.com/dotnet/core/aspnet:2.2.8-stretch-slim 
#FROM node:17.3.1-stretch-slim

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

USER root

RUN npm update
RUN npm install
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
