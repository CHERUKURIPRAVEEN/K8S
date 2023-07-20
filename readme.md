### Container Orchestration:
* Container Orchestration automates redeployment, management, scaling and networking of containers across the cluster. It is focused on managing the life cycle of containers.
* Enterprises that need to deploy and manage hundreds or thousands of Linux containers and hosts can benefit from container orchestration.
  
#### Container Orchestration is used to automate the following tasks:
1. Configuring and scheduling of containers.
2. Provisioning and deployment of containers.
3. Redundancy and availability of containers (Desired Vs Current state).
4. scaling up or remove containers to spread application load evenly across host infrastructure.
5. Movement of containers from one host to another another if there is a shortage of resources in your host or if a host dies.
6. Allocation of resources between the containers.
7. External expose of service running in a container with outside world.
8. Load balancing of the service discovery between the containers.
9. Health monitoring of the containers and host.

Docker Swarm:
* Docker Swarm is an open source container orchestration platform and is the native clustering engine for and by docker.
* It is used to efficiently manage, deploy and scale a cluster of nodes on docker.
* Any software, service or tool that run with the docker containers run equally well in swarm.
* It is an alternate to K8s, Manage containers and turns the desired state into the reality.
* It also fixes any future deviation from the desired state.
* Docker CLI manage creation of Swarm, deploy application service to swarm and managed swarm behaviour.

### Docker Swarm(DS) Vs Kubernetes(K8S)

* **Installtion & Cluster Configuration:**
```
K8S: Installtion is complicated, but once set up, the cluster is very strong.
DS : Installation is very simple, but the cluster is not very strong.
```
* **GUI:**
```
K8S: GUI is the Kubernetes dashboard.
DS : There is no GUI, Depends on 3rd party tools.
```
* **Scalability:**
```
K8S: Highly scalable and scales fast.
DS : Highly scalable scales 5 times faster than Kubernetes.
```
* **Auto Scalling:**
```
K8S: Kubernetes can do auto scaling.
DS : dockers Swarm cannot do auto scaling.
```
* **Rolling Updates & Roolbacks:**
```
K8S: Can deploy rolling updates and does automatic rollbacks.
DS : Can deploy rolling updates but not automatic rollbacks.
```
* **Data Volumes:**
```
K8S: Can share storage volumes only with other containers in the same POD.
DS : Can share storage volumes with any other containers.
```
* **Loging & Monitoring:**
```
K8S: Inbuilt tools for logging and monitoring.
DS : Third party tools like ELK should be used for logging and monitoring.
```

**Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. It consists of several core components that work together to ensure the seamless operation of applications within a Kubernetes cluster. Let's explore these core components:**

#### Master Node:
The Master Node is the control plane of the Kubernetes cluster. It manages and oversees all cluster operations, making decisions about the state of the system. The components running on the master node include:

* API Server:
The API Server is the central management component of Kubernetes. It exposes the Kubernetes API, which allows users and other components to interact with the cluster. Various tools and clients can communicate with the API server to create, update, or delete resources like pods, services, deployments, etc.

* Scheduler:
The Scheduler is responsible for assigning newly created pods to available worker nodes based on resource requirements, affinity/anti-affinity rules, and other policies. It ensures optimal distribution of workloads across the cluster.

* Controller Manager:
The Controller Manager includes several controllers that monitor the state of the cluster and take corrective actions to maintain the desired state. For example, the Replication Controller ensures a specified number of pod replicas are always running.

* etcd:
etcd is a distributed key-value store that stores the cluster's configuration data and state. It is used to store and retrieve information about all resources and objects in the cluster, ensuring data consistency and reliability.

#### Worker Node:
Worker nodes are the machines where the actual application containers run. These nodes are responsible for hosting, executing, and managing the containers. The components running on worker nodes include:

* Kubelet:
The Kubelet is an agent that runs on each worker node and communicates with the master node. It is responsible for ensuring that containers are running and healthy on the node. It takes care of pulling container images, starting, stopping, and restarting containers as needed.

* Container Runtime:
Kubernetes supports various container runtimes like Docker, containerd, and others. The container runtime is responsible for running the containers and managing their lifecycle.

* Kube-proxy:
Kube-proxy is responsible for network routing and load balancing for services running across the cluster. It enables communication between different pods and external services.

#### Networking:
Kubernetes requires a robust networking solution to enable communication between pods and services running on different nodes. Various container networking solutions can be used with Kubernetes, like Calico, Flannel, Weave, etc. These solutions provide virtual networks and IP addressing to the pods and ensure connectivity across the cluster.

#### Storage:
Kubernetes supports different types of storage solutions to provide persistent storage to applications. These include local storage, network-attached storage (NAS), and cloud storage providers. Persistent Volumes (PVs) and Persistent Volume Claims (PVCs) are used to manage storage resources in Kubernetes.

#### Add-ons:
Kubernetes also offers additional components that can be optionally added to the cluster to enhance its capabilities. Some common add-ons include:

#### Dashboard: 
A web-based graphical user interface (GUI) for visualizing and managing the cluster resources.
#### Heapster/Metrics Server: 
Used for cluster monitoring and gathering resource usage metrics.
#### Ingress Controller: 
Manages external access to services within the cluster.
#### DNS Add-on: 
Provides DNS-based service discovery for pods.

*These core components work in harmony to create a scalable, resilient, and manageable Kubernetes cluster capable of running containerized applications efficiently.*
