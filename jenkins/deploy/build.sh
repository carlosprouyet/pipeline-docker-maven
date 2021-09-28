#!/bin/bash

# Copia el jar

cp -f java-app/target/*.jar jenkins/deploy/share/modules/jars

echo "######################"
echo "*** Building image ***"
echo "######################"

cd jenkins/build/ && docker-compose up --build

