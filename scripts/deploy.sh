#!/bin/bash

echo "Iniciando despliegue..."

#Navega al directorio raiz del proyecto
cd "$(dirnamee "$0")/.."


#Ejecutar docker-compose con la configuración de producción

docker-composer -f docker-compose.prod.yml up -d --build

echo "Despliegue correcto"
