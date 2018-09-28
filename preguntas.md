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