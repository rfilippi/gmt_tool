#!/bin/bash
#Se selecciona una malla de manera tal que filtre por altura
##############################################3
##############################################3
#INPUT
##############################################3
malla=../datos/bat33.grd
cota=0

#OUTPUT
##############################################3
mallam=../saga/malla_mask.nc


#PROCESO
###############################################3
#gmt makecpt -Cbathy -T-3/2/0.1 > $colorm
##Se genera la mascara
#MAYOR QUE COTA EN 0 
gmt grdmath $malla $cota LE 0 EQ = $mallam
#
