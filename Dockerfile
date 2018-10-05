FROM jclementex/orbis-training-docker:0.2.0
RUN mkdir /app
WORKDIR /app
COPY ./preguntas.md preguntas.md