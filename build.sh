#!/bin/bash

# Limpiar pantalla
clear

echo "Este script crea los contenedores, imágenes, redes y volúmenes necesarios para ejecutar Wordpress en Docker"

echo "¿Desea continuar? (y/n)"

read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "Continuando..."
else
    echo "Saliendo..."
    exit 1
fi

echo "Creando contenedores, imágenes, redes y volúmenes..."

# Crear carpetas para los volúmenes
mkdir -p mysql-data
mkdir -p wp-content-site1 wp-themes-site1 wp-plugins-site1
mkdir -p wp-content-site2 wp-themes-site2 wp-plugins-site2
mkdir -p wp-content-multisite wp-themes-multisite wp-plugins-multisite

# Ejecutar Docker Compose
docker-compose up -d

echo "Contenedores, imágenes, redes y volúmenes creados con éxito"
