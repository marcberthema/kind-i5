
# Simple kind configuration

## Cluster creation

Configuration for kind cluster setup

```bash
# Create
kind create cluster --config kind.yaml
# Validate
kubectl cluster-info
kubectl get nodes
kubectl get pods -n kube-system
# Destroy
kind delete clusters main
```

## Simple deployment

```bash

# Change context
kubectl create namespace hello-world
kubectl config set-context --current --namespace=hello-world

kubectl apply -f hello-world/deployment.yaml
kubectl apply -f hello-world/service.yaml 

```