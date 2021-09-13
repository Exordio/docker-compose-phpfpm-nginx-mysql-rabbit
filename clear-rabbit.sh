#!/bin/bash
docker-compose down
cd /home/user/PhpstormProjects/docker-compose-phpfpm-nginx-mysql-rabbit/rabbit/
rm -rf data etc logs
mkdir data etc logs
chmod 777 data
chmod 777 etc/
chmod 777 logs
docker-compose up -d && docker exec docker-compose-phpfpm-nginx-mysql-rabbit_rabbitmq_1 rabbitmq-plugins enable rabbitmq_management
docker-compose logs -f -t