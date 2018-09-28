## Crear una imagen Docker en base a node:10.10.0-slim usando Dockerfile

```sh
docker build -t jclementex/orbis-training-docker:0.1.0 .
```

## Subir la imagen de docker al dockerhub

```sh
docker push jclementex/orbis-training-docker:0.1.0
```

## Usando docker tag, cambiar la versión de la imagen docker 0.1.0 por la versión 0.2.0

```sh
docker tag jclementex/orbis-training-docker:0.1.0 jclementex/orbis-training-docker:0.2.0
```