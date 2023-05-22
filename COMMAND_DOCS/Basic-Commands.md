![logo](../Images/Kubernetes-logo.png)

* To know the `kubectl` version
```
kubectl version
kubectl version --short
```
* To know the `Component status`, but not every get the status due to `RBAC` restrictions 
```
* kubectl get `componentstatus`
or
kubectl get cs
```
* To know the all `resources, shortnames, apiversions, namspaced/not, kind`
```
kubectl api-resources
```
* List pods in `default/current context`
```
kubectl get `pods`
```
* list all `pods in a cluster`
```
kubectl get pods -A
```
* List all `pods in all namespaces`
```
kubectl get pods --all-namespaces 
```
* List all pods in the current namespace, with more details
```
kubectl get pods -o wide
```
* List `description/details` on pod
```
kubectl get describe pods <pod name>
kubectl explain pod <pod name>
```
* List the `service in default/current context `
```
kubectl get svc
```
* list all `services`
```
kubectl get svc all
```
* List all `resources`
```
kubectl get all --all-namespaces
```
* List a particular deployment
```
kubectl get deployment my-dep
```
* Get a pod's YAML
```
kubectl get pod my-pod -o yaml
```