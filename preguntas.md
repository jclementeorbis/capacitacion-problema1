# Ejercicio 1

Capacitación: Git, bash y docker
Integrantes:
- Jose Clemente
- Carlos Gomez
- Scrum Master: Carlos Gomez


# PREGUNTAS:

## 1. ¿Qué es y para qué sirve GIT?
Es un sistema de control de versiones.

## 2. ¿Que es Github o bitbucket?
Un servicio en la nube que ayuda a los desarrolladores a almacenar y administrar su código

## 3. ¿Qué es y para qué sirve el SSH?
Es un protocolo para acceder de forma remota a un servidor privado

## 4. ¿Que pasa si cambio de PC? ¿Tendré que generar el SSH nuevamente? ¿Por qué?
Si, para poder identificar la nueva PC con el repositorio

## 5. ¿Qué es markdown? ¿Para qué sirve?
Markdown es un lenguaje de marcado, sirve para agregar formato a textos web

## 6. ¿Cómo inicializo y configuro un proyecto de git?

Para inicializar git se usa el siguiente comando:

```sh
$ git init
```

Para inicializar git se usa los siguientes comandos:

```sh
$ git config --global user.email "you@example.com"
$ git config --global user.name "Your Name"
```

# PREGUNTAS:
## 1. ¿Para qué ayuda el `git stash`?
Este comando de guardado rápido que guarda las modificaciones locales en temporal.

## 2. ¿Cuál es la diferencia entre `git stash pop` y `git stash apply`?
- git stash pop: Nos permite recuperar los cambios recién guardados y borrarlos del stash a la vez.
- git stash apply: Este comando nos ayuda a aplicar un stash sin eliminarlo de la lista de stash.

## 3. ¿Qué significa el modo interactivo del `git rebase`?
Git rebase básicamente lo que hace es recopilar uno a uno los cambios confirmados en una rama, y reaplicarlos sobre otra. Utilizar rebase nos puede ayudar a evitar conflictos siempre que se aplique sobre commits que están en local y no han sido subidos a ningún repositorio remoto.

## 4. ¿Cual es la diferencia entre la shell y la terminal?
- shell = intérprete de linea de comandos.
- terminal = tty = entorno de entrada y salida de texto.

## 5. ¿Que hace estos comandos? `git clone`, `git status`, `git add`, `git commit`, `git push`, `git checkout`, `git stash`, `git rebase`, `git merge`, `git branch`, `git push`,

- git clone: Clona un proyecto de git en la carpeta NombreProyecto.
- git status: Nos indica el estado del repositorio, por ejemplo cuales están modificados, cuales no están siendo seguidos por GIT, entre otras características
- git add: Agrega al repositorio los archivos que indiquemos.
- git commit: Hace commit a los archivos que indiquemos, de esta manera quedan guardados nuestras modificaciones.
- git push: Hace una actualización en nuestro branch local, desde un branch remoto que indicamos en el comando.
- git checkout:Crea un nuevo branch y automaticamente GIT se cambia al branch creado, clonando el branch desde donde ejecutamos el comando
- git stash: guarda las modificaciones locales en temporal.
- git rebase: básicamente lo que hace es recopilar uno a uno los cambios confirmados en una rama, y reaplicarlos sobre otra.
- git merge: Hace un merge entre dos branches, en este caso la dirección del merge sería entre el branch que indiquemos en el comando, y el branch donde estémos ubicados.
- git branch: Nos muestra una lista de los branches que existen en nuestro repositorio. 



# Paso 3

## Descargar el proyecto
```sh
$ git clone git@bitbucket.org:orbisunt/orbis-example-training.git
```

## Cambiar el repositorio remoto origin por uno de igual nombre en tu cuenta github. (Crear en github el repositorio y enlazarlo)
```sh
$ git remote rm origin
$ git remote add origin git@github.com:jclementeorbis/orbis-example-training.git
```

## Subir los cambios a github ¿Qué mensaje aparece?
```sh
$ git push origin master
```
```sh
git push origin master
Counting objects: 20, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (12/12), done.
Writing objects: 100% (20/20), 147.22 MiB | 3.20 MiB/s, done.
Total 20 (delta 6), reused 20 (delta 6)
remote: Resolving deltas: 100% (6/6), done.
remote: error: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
remote: error: Trace: 3612cecaccdd2870dbd5da606dfd15ee
remote: error: See http://git.io/iEPt8g for more information.
remote: error: File sc.16.tar.gz is 146.81 MB; this exceeds GitHub's file size limit of 100.00 MB
To github.com:jclementeorbis/orbis-example-training.git
 ! [remote rejected] master -> master (pre-receive hook declined)
error: failed to push some refs to 'git@github.com:jclementeorbis/orbis-example-training.git'
```

## Ahora el objetivo de esta parte es identificar el archivo más pesado que se encuentra en el repositorio y eliminarlo.
```sh
$ git verify-pack -v .git/objects/pack/pack-e121f70e46f7ec3df6d405dfb4895762265c6af7.idx | sort -k 3 -n | tail -3
7044640436e9b16f956bbdc8d5329d10c8f07d62 blob   766 411 470939
2ce5eca830c1f68c365b5323677e7c37212eccf6 blob   479328 469875 1064
cfc3322ec593c88d0e4d68c312de3583ca741041 blob   153942735 153904153 471677
```

```sh
$ git rev-list --objects --all | grep cfc3322ec593c88d0e4d68c312de3583ca741041
cfc3322ec593c88d0e4d68c312de3583ca741041 sc.16.tar.gz
```

```sh
$ git filter-branch --index-filter 'git rm --cached --ignore-unmatch sc.16.tar.gz' HEAD
Rewrite f3a6dc74d8fd32278c93a5e9d4bbaec4d43c04c5 (3/7) (1 seconds passed, remaining 1 predicted)    rm 'sc.16.tar.gz'
Rewrite d270f6d507e5a9594183c7a64f112d7e798508fc (3/7) (1 seconds passed, remaining 1 predicted)    rm 'sc.16.tar.gz'
Rewrite 3bd289d96f8784ba7a3fd793364df80ebaaec1f3 (7/7) (2 seconds passed, remaining 0 predicted)
Ref 'refs/heads/master' was rewritten
```

## Subir los cambios
```sh
$ git push origin master
```


# Parte 4

# Responder estas preguntas :

## 1. ¿Qué importancia tiene los tags en un proyecto?
Porque se usa para indicar las versiones o releases de un proyecto.

## 2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
La diferencia entre los comandos es que uno le proporciona un mensaje de etiqueta mientras que el otro no

## 3. ¿Cómo se sube todos los tags de git que hay en mi local?
Se usa la opción --tags en el comando git push. Esto transfiere todas las etiquetas que no estén ya en el servidor remoto.

## 4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
Es necesario estar logueado para subir una imagen

## 5. ¿Qué es y para qué sirve docker?
Docker es una tecnologia para crear contenedores ligeros y portables para las aplicaciones software que puedan ejecutarse en cualquier máquina con Docker instalado.

## 6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
La principal diferencia la encontraremos en sus componentes y la forma en la que se integran en la máquina Host donde corren.

## 7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
Si, para indicar en el Dockerfile la directiva FROM que indica la imagen base de la cual partiremos

## 8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
Si tratamos de subir la imagen así, nos dará un error que nos indica que es imposible subir la imagen al repositorio raíz y los repositorios raíz son administrados sólo por el equipo de Docker

## 9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
Se crea con <none>




# Parte 5


## 1. Listar las carpetas que hay dentro de la imagen

### ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
Para arrancar el contenedor en modo interactivo (-i) y asociar un tty (-t) y así poder ver la consola y escribir comandos.

### ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
Para ejecutar una shell


## 2. Revisar que el contenedor creado no esté en la lista de contenedores

### ¿Cuál es la diferencia entre docker ps y docker ps -a?

- docker ps: lista los contenedores
- docker ps -a: muestra que contenedores estan funcionando


## 8. Agregar el comando para ejecutar el contenedor

```sh
docker run -it jclementex/orbis-training-docker:0.4.0 bash
```

# Responder estas preguntas :
## 1. ¿Cuál es la diferencia entre una imagen y un contenedor?
- imagen: Una imagen es una especie de plantilla
- contenedor: Es una instancia en ejecución de una imagen

## 2. ¿Cómo listo las imágenes que hay en mi computadora?
con el comando docker ps

## 3. ¿Cómo salgo de un contenedor de docker?
con el comando exit

## 4. ¿Se elimina el contenedor al salir de ella?
No el contenedor no se elimina al salir de ella

## 5. ¿Cómo elimino un contenedor?
con el comando docker rm [image]

## 6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
- -i: activa modo interactivo
- -t: asigna un terminal
- --rm: elimina el contenedor una vez que se deje de utilizar..

## 7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
con el comando ls -a

## 8. ¿Cómo se comenta una linea de código en Dockerfile?
Poneniendo el caracter # al inicio de cada linea


# Parte 6

## 1. ¿Qué es NGINX?
es un servidor web de código abierto

## 2. ¿Cómo expongo puertos en docker?
Con el comando EXPOSE del Dockerfile

## 3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
El parámetro --expose=[] sirve para exponer un puerto o un rango de puertos dentro del contenedor

## 4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
El parámetro -p sirve para realizar el mapeo de puertos y recibe una cadena en el formato PUERTO-HOST:PUERTO-CONTENEDOR
