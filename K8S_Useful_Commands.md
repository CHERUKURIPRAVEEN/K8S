![logo](../Images/Kubernetes-logo.png)

* To know the Cluster Info
```
kubectl cluster-info
```
* To know the nodes details
```
kubectl get nodes
kubectl get nodes -o wide
```
* To know the `kubectl` version
```
kubectl version
kubectl version --short
```
* To know the `Component status`, but not every get the status due to `RBAC` restrictions 
```
kubectl get componentstatus
kubectl get cs
```
* To know the all `resources, shortnames, apiversions, namspaced/not, kind`
```
kubectl api-resources
```
## Pods releted commands
* List pods in `default/current context`
```
kubectl get pods
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
* Get a pod's YAML
```
kubectl get pod my-pod -o yaml
```
* Intractive pod (Run commands inside container)
```
kubectl run -i -t busybox --image=busybox --restart=Never
kubectl run ubuntu --image=pravin9docker/ubuntu_with_ping -i -t
kubectl run ubuntu --image=pravin9docker/ubuntu_with_ping -i -t --rm
kubectl run curl --image=curlimages/curl -i --rm --restart=Naver -- printenv
kubectl run curl --image=curlimages/curl -i --rm --restart=Naver -- cat /etc/hosts
kubectl run curl --image=curlimages/curl -i -t --rm --restart=Naver -- echo "hello"
```
* Delete pods
```
kubectl delete pod <pod-name>
kubectl delete pod <pod-name> --force --grace-period=0
kubectl delete pod <pod-name> --wait=false
kubectl delete po --all
```
* Edit pod
```
kubectl edit pod <pod-name>
```
* Create pod with limits
```
kubectl run <podname> --image=<image-name> --env="<key=value>" --labels="<key=velue>" --requests='cpu=100m, Memory=256Mi' --limits='cpu=200m, Memory=516Mi'
```
* Create pods from manifests
```
kubectl create -f <filename/URL>
kubectl replace -f <filename/URL>
kubectl delte -f <filename/URL>
kubectl get -f <filename/URL>
kubectl apply -f <filename/URL>
kubectl apply -f <directory>

kubectl create -f pod-defination.yml
kubectl apply -f pod-defination.yml
kubectl delte -f pod-defination.yml --force --grace-limit=0
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

## Copying files to and from containers
* Sometimes we may want to add a file to a running container or retrive a file from it during development phases.
* `kubectl` offers `cp` command to copy file or directories from your local to conatiners of any pod or from container to your local.

* From local to pod
```
kubectl cp index.html ngnix:/usr/share/nginx/html/index.html
```
* From pod to local
```
kubectl cp ngnix:/usr/share/nginx/html/index.html ./index.html
```
