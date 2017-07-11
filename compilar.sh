#!/bin/zsh

# Modo factura:    invoice
# Modo cotización: cotizar

# Ejemplo:
# ./compilar.sh invoice

export numero='003'
export fecha=`date "+%d%m%y"`

context -mode=${1} -arguments=numero=${numero},fecha=${fecha} -result=invoice_${numero}-${fecha} curriculum.tex
