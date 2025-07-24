#!/bin/bash

echo  "Limpiando contenedores anteriores..."

# Detener y eliminar los servicios definidos en docker-compose.prod.yml
docker compose -f docker-compose.prod.yml down

echo " Desplegando servidor Nginx limpio..."
docker compose -f docker-compose.prod.yml up -d --build

echo "Despliegue completado correctamente."

