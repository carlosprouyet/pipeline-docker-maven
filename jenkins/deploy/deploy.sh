#!/bin/bash

# Generamos
echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth


# Transifere el archivo
scp   -i /tmp/.auth  cparedes@192.168.117.128:/tmp/.auth
scp -i ./jenkins/deploy/publish cparedes@192.168.117.128:/tmp/publish
ssh -i  cparedes@192.168.117.128 /tmp/publish
