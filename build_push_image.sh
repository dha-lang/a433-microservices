#!/bin/bash

#Membuat docker image dengan nama item:app dan tag v1
docker build -t item-app:v1 .

#Melihat daftar image
docker image ls

#Mengubah nama image sesuai dengan format
docker tag item-app:v1 ghcr.io/dha-lang/item-app:v1 

#Login ke container registry
cat ../pat.txt | docker login ghcr.io --username dha-lang --password-stdin

#Mengunggah image ke container registry
docker push ghcr.io/dha-lang/item-app:v1 