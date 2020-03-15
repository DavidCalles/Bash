#!/bin/bash

#####################################################################################################################################
# Definición:															    #
# 		Script en bash para la extracción automática de la temperatura en °C a partir de un Sensor One-Wire (DS18820)	    #
# 		en una raspberrypi 3. El formato de nombre de cada archivo es "AAAAMMDD_TEMPERATURA#.csv"			    #
#		El formato en archivo es "AAAAMMDD hhmmss, TT.ttt"								    #
# Uso :		$ bash OneWire3.sh t (t=tiempo entre datos, seg, correr en carpeta donde se desean guardar los archivos)	    #
#		$ bash OneWire3.sh t & (Segundo plano)										    #
# Notas:	Es necesario cambiar el nombre del valor 28-00001045078e							    #
#		Activar la conectividad One-Wire de la raspberry (sudo raspi-config)						    #
# Desarrolladores:														    #
#		David Calles & Santiago Torres											    #
# Última revision:														    #
#		Sab, 29 Feb 2020												    #
#####################################################################################################################################


NOMBRE=$(date +%Y%m%d_'TEMPERATURA')                            #Genera nombre del archivo a partir de fecha
NOMBRE2="$NOMBRE`ls ${NOMBRE}* 2> /dev/null | wc -l`.csv"       #Genera conteo en nombre para evitar repeticion

task () {
	FECHA=$(date +%Y%m%d' '%H%M%S) 					#Genera la fecha de primer columna
	echo -n $FECHA >> $NOMBRE2 					#Imprime linea de fecha en archivo .csv
	echo -n ',' >> $NOMBRE2						#Formato de tipo csv
	fileSensor=`cat /sys/bus/w1/devices/28-00001045078e/w1_slave`   #Obtiene temperatura de sensor junto con datos basura
	fileT="${fileSensor: -5}"					#Separa la temperatura (VVVVV)
	echo "${fileT:0:2}.${fileT:2}" >> $NOMBRE2			#Da formato a la temperatura como VV.VVV
}

while :
do
	task
	sleep $1
done
#####################################################################################################################################
