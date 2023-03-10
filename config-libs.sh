#!/usr/bin/env bash

#O arquivo de origem
SOURCEFILE=exemplo.txt

#O arquivo de destino
TARGETFILE=exemploTarget.txt

#Um array com os valores que serão substituídos
declare -A VARIABLES=(
  [var1]=valor1
  [var2]=valor2
  [var3]=valor3
)

#Iterar sobre todos os valores de VARIABLES e realizar a substituição no arquivo origem
for ORIGINAL_VALUE in "${!VARIABLES[@]}"
do REPLACEMENT_VALUE=${VARIABLES[$ORIGINAL_VALUE]}
  sed -i "s/${ORIGINAL_VALUE}/${REPLACEMENT_VALUE}/g" ${SOURCEFILE}
done

#Copiando o arquivo final para o destino
cp ${SOURCEFILE} ${TARGETFILE}

#_______________________________________________________________________________________________
#Armazena o endereco das variaveis dentro dos arquivos
VARIAVEL_ARQUIVO1="/app/gradle.properts.kts"
VARIAVEL_ARQUIVO2='/gradle/libs.version.toml'

#Local para o arquivo1.kt
ARQUIVO1="app/gradle.properts.kts"

#Local para o arquivo2.kt
ARQUIVO2="gradle/libs.versions.toml"

#Substitui o valor da variavel no arquivo1.kt
sed -i "s|$VARIAVEL_ARQUIVO1|nova_string|g" $ARQUIVO1

#Copia o valor da variavel para o arquivo2.kt
sed -i "s|$VARIAVEL_ARQUIVO2|$VARIAVEL_ARQUIVO1|g" $ARQUIVO2