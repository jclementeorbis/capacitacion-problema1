# Parte 4

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

# Parte 6

## 2. Crear un contenedor exponiendo el puerto 80 a través del puerto 1080 al hacer docker run

```sh
docker run -d -p "1080:80" jclementex/orbis-training-docker:1.0.0
```

## 5. Agregar docker-compose para la construcción y ejecución de la imagen

```sh
docker-compose -f ./docker-compose.yml up
```


# Parte 7

## 5. Usando docker run ejecutar npm install

```sh
docker run -w /app -v "D:\Projects\orbis-training-project":/app jclementex/orbis-training-docker:2.0.0 npm install
```

## 7. Exponer los puertos 3030 y 35729 en la imagen de docker, luego ejecutar npm start usando docker run

```sh
docker run -w /app -p 3030:3030 -p 35729:35729 -v "D:\Projects\orbis-training-project":/app jclementex/orbis-training-docker:2.1.0 npm start
```