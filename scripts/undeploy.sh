#!/usr/bin/env bash

# Halt on any error
set -e
cd ..

# Cloud control with kubernetes

# UnExpose new replication controller as a service
kubectl delete -f service.json

# Delete the cluster
gcloud container clusters delete kyrene --zone=europe-west1-c

# Eliminar la imagen del servidor
gcloud docker push gcr.io/funfunfunction-149923/kyrene:1

echo "Ahora conecta al console.gcloud.com y borra el storage de la imagen"