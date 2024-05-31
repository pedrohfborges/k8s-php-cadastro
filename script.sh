#!bin/bash

echo "Buildando as Imagens..."
docker build ./database/. -t pedrohfborges/meubanco:1.0
docker build ./backend/. -t pedrohfborges/php:1.0

echo "Subindo Imagens para o Register"

docker push pedrohfborges/meubanco:1.0
docker push pedrohfborges/php:1.0

echo "Excluindo Serviços e Pods existentes"
kubectl delete service php-service mysql-connection
kubectl delete deploy mysql php

echo "Subindo os Pods"
cd ./database/
kubectl apply -f db-deployment.yml
cd ../backend/
kubectl apply -f php-deployment.yml


