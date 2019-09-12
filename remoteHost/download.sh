#!/bin/bash
#Se crea una variable para guardar la direccion donde se guarda el archivo 
destiny=$1
clear
echo "Descarga de carpetas y archivos via ssh"
#Se define una varible que es la condicion para que se efectue el loop while
condition=0
echo "Elige una de las siguientes opciones:"
while [ $condition == 0 ]
do
clear
echo "Elige una de las siguientes opciones:"
echo "1)Directorio"
echo "2)Archivo"
read option
#Se crea un menu de opciones (switch de bash)
case $option in
        1)
                #Se redefine la condicion para salir del loop while
                condition=1
                echo "Ingrese el nombre de la carpeta que descargara:"
                #dir es la varible que guarda el nombre de la carpeta a descargar
                read dir
                #cd - me regresa al directorio donde se corrio el comando upload
                cd -
                #Se muestra la sintaxis del protocolo ssh para en descargar ccarpetas
                scp -r $h15:/home/ray/toDownload/$dir $destiny
                echo "Gracias por confiar en nosotros!"
                ;;
        2)
                condition=1
                echo "Ingrese el nombre del archivo:"
                #file es la var que guarda el nombre del archivo solo puede ser UNO!!!, por que asi lo marca ssh
                read file
                cd -
                #Se muestra la sintaxis del protocolo ssh para en descargar archivos
                scp $h15:/home/ray/toDownload/$file $destiny
                echo "Gracias por confiar en nosotros!"
                ;;
        *)
                ;;
        esac
done

