## Kubeconfig Files Merge
#### Kubeconfig
> **kubeconfig** is the file used by kubectl to retrive the required configuration to access your **Kubernetes Cluster** or to Communicate with the *API server* of that cluster.

> **kubeconfig** files are used to organize information about **clusters**, **users**, **namespaces** and **authentication mechanisums**

#### Default kubeconfig file path
> $HOME/.kube/config

#### Setup Environment variable
> export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config

#### Command line flag
```
kubectl config --kubeconfig=*configfilepath* --minify 
```
#### View kubeconfig file
```
kubectl config view 
```
#### To see the list of clusters being managed
```
kubectl config get-clusters
```
#### To see the list of contexts and the current context
```
kubectl config get-cntexts
```
#### To see the current contexts
```
kubectl config current-cntext
```
#### Change namespace
```
kubectl config set-context --current --namespace=*namespace*
or
kubectl config set-context $(kubectl config current-context) --namespace=*namespace*
```


References:
- **[Configurations](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/)**
- **[Access Cluster](https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/)**
