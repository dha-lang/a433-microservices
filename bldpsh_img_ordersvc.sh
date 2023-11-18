#!/bin/bash

#Membuat docker image dengan nama order-service dan tag latest
docker build -t ghcr.io/dha-lang/order-service:latest -f Dockerfile  .

#Login ke container registry
cat ../pat.txt | docker login ghcr.io --username dha-lang --password-stdin

#Mengunggah image ke container registry
docker push ghcr.io/dha-lang/order-service:latest