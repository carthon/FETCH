#!/bin/bash 

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

    -t|--type)
    TYPE="$2"
    if [ $2 = "f" ]; then
 	echo "Archivo"
    elif [ $2 = "d" ]; then
	echo "Directorio"
    fi
	
    shift # past argument
    ;;

    *)
    # unknown option
    ;;

esac
shift # past argument or value
done

echo DIR   = "${DIR}"
echo TYPE  = "${TYPE}"




echo "Number files in DIR matching NAME:" $(ls -1 "${DIR}"/*"${NAME}"* | wc -l)


