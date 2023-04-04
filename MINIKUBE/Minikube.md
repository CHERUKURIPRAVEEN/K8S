## Minikube
1. Minikube is local Kubernetes, focusing on making it easy to learn and develop for Kubernetes.
2. It creates a single node cluster.
3. Available for LINUX, MacOS and Windows.
4. Inbuilt support for Metallb, Dashboard, Storage provisioners etc.
5. Master node is untained.
Prerequisites
```sh
1. 2 CPUs or More
2. 2 GB of Free Memory
3. 20 GB of free disk space
4. Internet connection
5. Conatiner or virtual machine machine manager such as
   Docker, Hyperkit, Podman, Hyper-V, KVM, VirtualBOX, or VM Ware
```
For Installation ref: https://github.com/CHERUKURIPRAVEEN/K8S/blob/master/MINIKUBE/Installation_minikube_on_Windows.md

#### Minikube cluster setup
start Minikube Cluster:
below command will deploy single node cluser with 4GB memory, 2 CPUs, Mentioned K8s Version and driver as VirtualBox

```sh
minikube start --driver=virtualbox --memory=4096 --cpus=2 --kubernetes-version=v1.22.2
```
#### minikube commands for checking addons and IP
Minikube IP
```sh
minikube ip
```
Minikube addons
```sh
minikube addons list
```
Installing addons
```sh
minikube addons enable <name of addon>
ex: minikube addons enable metallb
```
Configure addons
```sh
minikube addons configure metallb
```
Provide some range IP address for loadbalancers
```sh
ex: Staring IP 192.168.59.120
    Ending IP  192.168.59.130
```
Multinode minikube Cluster with a diffrent CNI
```sh
minikube start -n=4 --cni='calico' --container-runtime='containerd'

minikube start --driver=virtualbox --memory=4096 --cpus=2 --kubernetes-version=v1.22.2
```
Enable Dash board
```sh
minikube addons enable dashboard
minikube addons enable metrics-server
ninikube dashboard --url
```
Stop minikube
```sh
minikube stop
```
Delete minikube cluster
```sh
minikube delete
```