
#### Setup Kubernetes (K8s) Cluster on AWS


1. Create Ubuntu EC2 instance
2. install Docker
```sh 
swapoff -a
curl https://get.docker.com | bash
```
    
3. Install kubeadm, kubectl, kubelet
```sh
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
   
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
   
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update

sudo apt-get install -y kubelet kubeadm kubectl

sudo apt-mark hold kubelet kubeadm kubectl

```
4. Setup network cidr
```sh
sudo kubeadm --pod-network-cidr="10.244.0.0/16"

kubectl apply -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml
```
5. 
