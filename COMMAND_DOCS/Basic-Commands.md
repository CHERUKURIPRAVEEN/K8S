List pods in default/current context
```
kubectl get pods
```
list all pods in a cluster
```
kubectl get pods -A
```
List description on pod
```
kubectl get describe pods <pod name>
kubectl explain pod <pod name>
```
List the service in default/current context 
```
kubectl get svc
```
list all services
```
kubectl get svc all
```
List all resources
```
kubectl get all --all-namespaces
```
List all pods in all namespaces
```
kubectl get pods --all-namespaces 
```
List all pods in the current namespace, with more details
```
kubectl get pods -o wide
```
List a particular deployment
```
kubectl get deployment my-dep
```
```
Get a pod's YAML
```
kubectl get pod my-pod -o yaml
```