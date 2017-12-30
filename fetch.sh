#!/bin/bash

##Uso del programa y salida
function UsageAndExit
{
	echo "Usage: fetch <dir> <opseleccion> <criterioselec> <accion>"
	exit 0
}

##Funcion de Error
function ShowError
{
	echo "$0: Error($1) $2"
}

##Si el programa supera o es menor a los 4 argumentos muestra el modo de uso y sale
if [[ $# -ne 4 ]]; then
	UsageAndExit
fi

##Recopilación de Argumentos en variables
path="$1"
condicionselec="$2"
criterioselec="$3"
accion="$4"
estadoUsuario=$UID

echo $estadoUsuario

##Comprobamos si existe el directorio pasado
if [ ! -r $path ]; then
	ShowError 2 "No se puede leer el directorio."
	exit 1
fi

case $condicionselec in
	-t)
		case $criterioselec in
			f) echo Criterio de seleccion por ficheros
				criterioselec="^-"
				;;
			d) echo Criterio de seleccion por directorios
				criterioselec="^d"
				;;
			*) ShowError 1 "Opción no válida."
		esac
		;;

	-n)
		echo Selección por cadena
		;;
	-p)	
		echo Selección por permisos de archivo
		
esac

case $accion in
	-print)ls -l $path | grep $criterioselec
		;;
	*) ShowError 1 "Opción no válida."
		;;
esac




