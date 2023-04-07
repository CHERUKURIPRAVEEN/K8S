## Minikube Installation

### On Linux
#### Prerequisites
1. Minikube
2. Docker CLI
4. Kubectl

#### Installation:
##### On Linux

1. Minikube
```sh
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube
```
2. Docker CLI
```sh
curl www.get.docker.com | bash
```
3. Kubectl
```sh
sudo apt-get update
sudo apt-get install -y kubectl

ref: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
```