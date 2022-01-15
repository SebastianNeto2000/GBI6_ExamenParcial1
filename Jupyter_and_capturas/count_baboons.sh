#!/bin/bash

# function of script:
# read input:
# $1 is the file name
# $2 is the maleID

cut -f 1 $1 ../data/Gesquiere2011_data.csv | grep -c -w $2
