##
##  Programación en Python
##  ===========================================================================
##
##  La columna 5 del archvio `data.csv` codifica un diccionario donde cada
##  cadena de tres letras corresponde a una clave y el valor despues del
##  caracter `:` corresponde al valor asociado a la clave. Por cada clave,
##  obtenga el valor asociado mas pequeño y el valor asociado mas grande 
##  computados sobre todo el archivo. 
##
##  Rta/
##  aaa,0,6
##  bbb,4,7
##  ccc,0,1
##  ddd,5,5
##  eee,0,0
##  fff,4,9
##  ggg,3,3
##  hhh,6,8
##  iii,2,7
##  jjj,2,5
##
##  >>> Escriba su codigo a partir de este punto <<<
datos=list(open('data.csv','r'))
datos=[l.split('\t') for l in datos]
col5=[l[4].replace('\n','') for l in datos]
col5=[l.split(',') for l in col5]
col5=sum(col5,[])
col5=[l.split(':') for l in col5]
col5
letras=sorted(list(set([l[0] for l in col5])))
for l in letras:
    lista=[]
    for k in col5:
        if k[0]==l:
            lista.append(int(k[1]))
    print(l,min(lista),max(lista),sep=',')
#en cada uno de los valores asociados de las clave hay ceros, por tanto, el mínimo de la lista en cada posisión es 0, en el test del código se expresan valores mayores