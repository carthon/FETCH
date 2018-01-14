1. Introducción:
El objetivo del trabajo es la realización de un comando para Linux capaz de realizar la búsqueda de ficheros dentro del árbol 
de directorios de acuerdo a unos criterios especificados como argumentos en la ejecución de la aplicación. 
Este comando se realiza para la práctica final de la asignatura de Sistemas Operativos. 

2. Manual de operaciones:
En este apartado se muestra los tipos de selecciones que se pueden hacer, que acciones se pueden realizar y su respectiva 
gestión de errores:

- Criterio de selección: por tipo de archivo
fetch <directorio > -t [f|d] <acción>
Selecciona aquellas entradas del directorio a analizar que cumplan la condición de ser fichero (f) o directorio (d):
--> Si la combinación es -t f : Seleccionará los ficheros
--> Si la combinación es -t d : Seleccionará los directorios RROR

- Criterio de selección: por nombre de archivo
fetch <directorio> -n <cadena> <acción>
Selecciona aquellas entradas del directorio a analizar que cumplan la condición de contener en el nombre la subcadena pasada como argumento.

- Criterio de selección: por permisos de archivo
fetch <directorio> -p [x|r|w] <acción>
Selecciona aquellas entradas del directorio a analizar que cumplan la condición de ser ejecutables (x) o de tener permisos de lectura (r) o de escritura (w)

- Criterio de selección: por contenido de archivo
fetch <directorio> -c <cadena> <acción>
Selecciona aquellos archivos que contengan una determinada subcadena, pasada como argumento, dentro del mismo.

- Acción: impresión de archivos
fetch <directorio> <criterio de selección> -print
Acción que consiste en mostrar por salida estándar la lista de archivos que cumplan el criterio de selección.

- Acción: procesar lista de archivos
fetch <directorio> <criterio de selección> -pipe <mandato [argumentos...]>
Acción que consiste en, el resultado del criterio de selección, se pasa por medio de un pipe (tubería) a otro programa. Este programa se facilita como argumento de la acción a aplicar junto con los argumentos que a su vez se necesite.

- Acción: ejecución secuencial de un programa por archivo
fetch <directorio> <criterio de selección> -exec <mandato [argumentos...]>
Acción que consiste en lanzar un proceso por cada uno de los archivos que cumplan el criterio de selección.

- Gestión de errores
Error 1: Opción no válida
Este error se producirá siempre que los argumentos de un criterio de selección o de una acción a aplicar sean incorrectos

Error 2: No se puede leer el directorio
Este error se producirá cuando los permisos del directorio sobre el que se realiza la búsqueda no permitan efectuar las operaciones de recorrido de sus entradas o no exista dicho directorio.

Error 3: No se puede leer el archivo
Este error se generará por cada uno de los archivos sobre los que no se tenga permiso de lectura

Error 4: No se puede ejecutar el comando
Este error se dará si el mandato que se indica en las acciones -pipe o -exec no se puede ejecutar correctamente o no se ha introducido alguno.
Usage: fetch <dir> <opseleccion> <criterioselec> <accion>
Este mensaje aparecerá si una vez introducidos los datos falta alguno de los necesarios para la correcta ejecución del comando.

WARNING: Ha introducido un comando extra innecesario
Este mensaje aparecerá cuando se introduzca un comando no necesario para la realización de esa acción.
