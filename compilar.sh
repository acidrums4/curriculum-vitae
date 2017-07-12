#!/bin/zsh

# Modo factura:    factura
# Modo cotización: cotizar

# Ejemplo:
# ./compilar.sh factura

export numero='003'
export fecha=`date "+%d%m%y"`

context -mode=${1} -arguments=numero=${numero},fecha=${fecha} -result=${1}_${numero}-${fecha} curriculum.tex
