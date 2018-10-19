FROM node:10.10.0-slim
LABEL maintainer="jose.clemente@orbis.com.pe"
RUN apt-get update && apt-get install
EXPOSE 3030 35729
