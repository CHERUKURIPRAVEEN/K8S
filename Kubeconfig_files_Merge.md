## Kubeconfig Files Merge
#### kubeconfig
> **kubeconfig** is the file used by kubectl to retrive the required configuration to access your **Kubernetes Cluster** or to Communicate with the *API server* of that cluster.

> **kubeconfig** files are used to organize information about **clusters**, **users**, **namespaces** and **authentication mechanisums**

#### Default kubeconfig file path
> $HOME/.kube/config

#### Setup Environment variable
> export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config

#### Command line flag
> kubectl config --kubeconfig=*configfilepath* --minify 
