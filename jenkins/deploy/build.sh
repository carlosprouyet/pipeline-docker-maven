#!/bin/bash

# Copia el jar

cp -f java-app/target/*.jar jenkins/deploy/

cd jenkins/deploy && docker-compose down

echo "######################"
echo "*** Building image ***"
echo "######################"

cd jenkins/deploy && docker-compose up --build

