##
##  Programación en Bash
##  ===========================================================================
##
##  Usando los archivos `data1.csv`, `data2.csv`, `data3.csv`, escriba en el
##  archivo `script.sh`  un programa en Bash que imprima en pantalla
##  la siguiente salida por linea:
## 
##  * El nombre del archivo.
##  * El número de la línea procesada.
##  * La letra de la primera columna del archivo.
##  * La cadena de tres letras y el valor asociado de la columna 2 del archivo original. 
##
##  Note que se genera una línea de salida por cada cadena de tres letras.
##   
##  Rta/
##
##  data1.csv,1,E,jjj:3
##  data1.csv,1,E,bbb:0
##  ...
##  data3.csv,3,B,hhh:1
##  data3.csv,3,B,ddd:2
##
##  >>> Escriba su codigo a partir de este punto <<<
##
#! /usr/bin/env bash
datas=$(ls *.csv)
for datos in $datas
do 
 if [ -f data.csv ]
 then 
    cat $datos | sed '/^[[:space:]]*$/d' | nl | sed 's/[[:space:]]//g' | sed 's/\([0-9]\)\([A-Z]\)/'${datos[*]}'\,\1,\2,/g' >> data.csv
 else
    cat $datos | sed '/^[[:space:]]*$/d' | nl | sed 's/[[:space:]]//g' | sed 's/\([0-9]\)\([A-Z]\)/'${datos[*]}'\,\1,\2,/g' > data.csv
 fi

done