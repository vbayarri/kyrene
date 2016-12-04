#!/usr/bin/env bash

# Halt on any error
set -e
cd ..

# Docker

# Build docker image
docker build --tag=gcr.io/funfunfunction-149923/kyrene:1 .

# Google Cloud

# Push docker image to cloud
gcloud docker push gcr.io/funfunfunction-149923/kyrene:1

# Create new cluster
gcloud container clusters create kyrene --machine-type g1-small --zone europe-west1-c

# Cloud control with kubernetes

# Create replication controller and init pods
kubectl create -f kubernetes.json

# Expose new replication controller as a service
kubectl create -f service.json

# Consultar la ip del replication controller
kubectl get services
