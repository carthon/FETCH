#!/bin/bash 

#Version 1.1
# Parsing list of arguments 
# Usage: script <dir> <criteria> 
# 
# Criteria: [-t|-n|-p]
# File type selection: -t [f|d] (f for files, d for dirs) 


DIR=$1
shift

# Loop until all params are consumed
while [[ $# -gt 1 ]]
do
key="$1" # Key is the param flag

case $key in

    -t|--type)					#Seleccion por tipo de archivo

    TYPE="$2"

    if [ $2 = "f" ]; then			#Si es fichero
	ficheros=$(ls -F $DIR | grep -v '/$')
	echo $ficheros
    elif [ $2 = "d" ]; then			#Si es directorio
	directorios=$(ls -F $DIR | grep '/$')
	echo $directorios
    else 					#Control de errores (si no es ni f ni d)
	echo "Código 1 - Opción no válida"
    fi

    shift 					#Se pasa el argumento
    ;;

    -n|--name)					#Seleccion por nombre de archivo
	
    NAME="$2"

    shift # past argument
    ;;

    *)
    # unknown option
    ;;

esac
shift # past argument or value
done




