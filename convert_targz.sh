#!/bin/bash
########################################################################
# Script: convert_targz.sh
# Description: Create a tar.gz archive from the ZIP file
# Author: Lucas Landim   |   February@2024
#########################################################################

echo --------------------------------------------------------------------------------------------------------------------------------------
echo Início do processo
echo --------------------------------------------------------------------------------------------------------------------------------------
echo

# Gera o arquivo tar.gz a partir do arquivo zip
echo Unzip $1.zip
echo --------------------------------------------------------------------------------------------------------------------------------------
echo
unzip $1.zip
tar -czvf $1.tar.gz $1

# Move o arquivo tar.gz para o diretório onde será realizado o import
echo
echo --------------------------------------------------------------------------------------------------------------------------------------
echo Move o arquivo tar.gz para o diretório de import
dir_import=/dir/in
mv $1.tar.gz $dir_import
echo "Arquivo disponibilizado em `ls -1 $dir_import/$1.tar.gz`"
echo

# Remove o diretório que foi 'unzipado' e o arquivo .zip usado para gerar o tar.gz
echo --------------------------------------------------------------------------------------------------------------------------------------
echo Remove o arquivo zip e o diretório criado a partir do unzip
rm -rf $1
rm -rf $1.zip
echo Arquivo $1.zip e diretório $1 removidos com sucesso!

echo
echo --------------------------------------------------------------------------------------------------------------------------------------
echo Fim do processo
echo --------------------------------------------------------------------------------------------------------------------------------------
echo
