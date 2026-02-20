#!/bin/bash

kind delete clusters main
kind create cluster --config kind.yaml

kubectl create namespace hello-world
kubectl config set-context --current --namespace=hello-world

kubectl apply -f hello-world/deployment.yaml
kubectl apply -f hello-world/service.yaml

echo -n "Sleeping while pods are starting..."
for i in {1..30}; do sleep 1; echo -n "."; done
echo "Ready !\n"

kubectl get pods
kubectl get svc

curl 192.168.40.160:8080
