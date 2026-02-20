
# Simple kind configuration

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