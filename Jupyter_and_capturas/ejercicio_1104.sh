###################################################
# Exercise 1.10.4 on Buzzard et al. (2016)
###################################################
#Buzzard et al. (2016) recolectaron datos sobre el crecimiento de un bosque
#en Costa Rica. En el archivo Buzzard2015_data.csv encontrará un subconjunto
#de sus datos, incluida información taxonómica, abundancia y biomasa de árboles.
###################################################
# 1. Escriba un script para el archivo CSV que escoja
#un número de columna determinado, imprima:

# - el nombre de la columna correspondiente;
# - el número de valores distintos en la columna;
# - el valor mínimo;
# - el valor máximo.

# First, we need to extract the column name.
# For example, for the Buzzard data file, and col 7

cut -d ',' -f 7 ./Buzzard2015_data.csv | head -n 1

# biomass

# Second, we need to obtain the number of
# distinct values. We can sort the results
# (after removing the header), and use uniq

cut -d ',' -f 7 ./Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l

# 285

# Third, to get the max/min value we can use
# the code above, sort using -n, and either
# head (for min) or tail (for max) the result.

# Minimum
cut -d ',' -f 7 ./Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1

# 1.048466198

# Maximum
cut -d ',' -f 7 ./Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1

# 14897.29471
