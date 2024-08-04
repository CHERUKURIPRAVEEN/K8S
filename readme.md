## Container Orchestration:

* Container Orchestration automates redeployment, management, scaling and networking of containers across the cluster. It is focused on managing the life cycle of containers.
* Enterprises that need to deploy and manage hundreds or thousands of Linux containers and hosts can benefit from container orchestration.
  
### Container Orchestration is used to automate the following tasks:

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

## Docker Swarm(DS) Vs Kubernetes(K8S)

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

### Master Node:

The Master Node is the control plane of the Kubernetes cluster. It manages and oversees all cluster operations, making decisions about the state of the system. The components running on the master node include:

* API Server:
The API Server is the central management component of Kubernetes. It exposes the Kubernetes API, which allows users and other components to interact with the cluster. Various tools and clients can communicate with the API server to create, update, or delete resources like pods, services, deployments, etc.

* Scheduler:
The Scheduler is responsible for assigning newly created pods to available worker nodes based on resource requirements, affinity/anti-affinity rules, and other policies. It ensures optimal distribution of workloads across the cluster.

* Controller Manager:
The Controller Manager includes several controllers that monitor the state of the cluster and take corrective actions to maintain the desired state. For example, the Replication Controller ensures a specified number of pod replicas are always running.

* etcd:
etcd is a distributed key-value store that stores the cluster's configuration data and state. It is used to store and retrieve information about all resources and objects in the cluster, ensuring data consistency and reliability.

### Worker Node:

Worker nodes are the machines where the actual application containers run. These nodes are responsible for hosting, executing, and managing the containers. The components running on worker nodes include:

* Kubelet:
The Kubelet is an agent that runs on each worker node and communicates with the master node. It is responsible for ensuring that containers are running and healthy on the node. It takes care of pulling container images, starting, stopping, and restarting containers as needed.

* Container Runtime:
Kubernetes supports various container runtimes like Docker, containerd, and others. The container runtime is responsible for running the containers and managing their lifecycle.

* Kube-proxy:
Kube-proxy is responsible for network routing and load balancing for services running across the cluster. It enables communication between different pods and external services.

### Networking:

Kubernetes requires a robust networking solution to enable communication between pods and services running on different nodes. Various container networking solutions can be used with Kubernetes, like Calico, Flannel, Weave, etc. These solutions provide virtual networks and IP addressing to the pods and ensure connectivity across the cluster.

### Storage:

Kubernetes supports different types of storage solutions to provide persistent storage to applications. These include local storage, network-attached storage (NAS), and cloud storage providers. Persistent Volumes (PVs) and Persistent Volume Claims (PVCs) are used to manage storage resources in Kubernetes.

### Add-ons:

Kubernetes also offers additional components that can be optionally added to the cluster to enhance its capabilities. Some common add-ons include:

### Dashboard: 

A web-based graphical user interface (GUI) for visualizing and managing the cluster resources.

### Heapster/Metrics Server: 

Used for cluster monitoring and gathering resource usage metrics.

### Ingress Controller: 

Manages external access to services within the cluster.

### DNS Add-on: 

Provides DNS-based service discovery for pods.

*These core components work in harmony to create a scalable, resilient, and manageable Kubernetes cluster capable of running containerized applications efficiently.*


## Pods

* Basic scheduling unit in kubernetes. Pods are often ephemeral.
* Kubernetes doesn't run containers directly, Instead it wraps one or more containers into a higher level structure called a pod.
* It is also smallest deployable unit that can be created, schedule and managed on a kubernetes cluster.
* Each pod is assigned a **unique IP address** within the cluster.
* Pods can hold ***multiple containers*** as well, but you should limit yourself when possible. Beacuse pods are scaled up and down as a unit, all containers in a pod must scale togather, regardless of their individual needs. This leads wasted resource.

* a port can have one more tightly related containers that we always run togather on the same worker node and in the same linux namespace. 
* Each pod is like a separate logical mechine with its own IP, hostname, processes and so on, Running a single application, It is just a sandbox to run container in.
* All the container is a pod will apper to be running on the same logical machine, whereas containers in the other pods, even if they are running on the same worker node, will appear to be running on a different one. 

* Any container in the same pod will share this same storage volumes and network resources and communicating using localhost.
*  Kubernetes uses **YAML** to describe the desired state of the containers in a pod. This is also called a *pod spec*. These objects are passed to the kubelet to the API Server. 
* Pods are the unit of replication in Kubernetes. If your application become too poplar and a single pod instance can't carry the load. kubernetes can be configured to deploy new replicas of your pod to the cluster as necessary.


### Lifecycle of a pod

* Through its lifecycle, a Pod can attain following states starting from **Pending** to **Running**, 
* A pod's status can be known from *phase* field.
* **Pendding:** the pod accepted by the kubernetes system but it container(s) is/are not created yet. This includes time a pod spends waiting to be scheduled as well as the time spent downloading container images over the network. 
* **Running:** The pod scheduled on a node and all its containers are created and at-least one container is in running state.
* **Succeeded:** All containers in the pod have exited with status 0 and will not be restarted. 
* **Failed:** All containers of the pod have exited and at least one container has reached a non zero status.
* **CrashLoopBackoff:** The container fails to start and is tried agin and again.
* **Unknown:** For some reason the state of the pod could not be obtained. the phase typically occurs due to an error in communicating with the node where the pod should be running. 

```bash
kubectl get po <pod name> -o yaml | grep phase
```

### Lifecycle of a Container

* Kubernetes also tracks the state of each container inside a pod. 
* Once the scheduler assign a pod to a node, the kubelet start creating containers for that pod using container runtime. 
* You can also use `kubectl describe pod name_of_pod` to check the state of the containers. 
* There are three possible container states. 
* **Waiting:** while stilling pulling the container image from a Container Registry, or applying secrets
* **Running:** when container is running without any issues.
* **Terminated** when container ran to completion or failed for some reason. use `kubectl describe` to see the reason, an exit code, and the start and finish time of the containers period of execution.

### Container Restart Policy

* The restart policy applies to all containers in the pod.
* The possible values **Always** **OnFailure** and **Never**. 
* The default value is **Always** 
* Mention the restart policies in podspec
* When container in a pod exit, The Kubelet restart them with an exponential backoff delay *10 seconds 20 seconds 40 seconds* That is capped at five minutes.
* Once a container has executed for 10 minutes without any problems. The Kubelet reset the restart backoff timer for the container.

### Run a temp pod

* you can also fire up an intractive Pod within a Kubernetes cluster that is deleted once you exit the intractive session.
* `--rm` - Ensure that the pod is deleted when you exit from the intractive shell.
* `-i/--tty` - The combination od these two are what allows us to attach to an intractive session.
* `--` - Delimits the end of the kubectl run option from the positional arg [bash]
* `bash` - Overwrite the container's CMD. In this case, we want to lunch bash as our container's command.  

### Images Pull Policy

* The imagePullPolicy in Kubernetes is a field that controls when the Kubernetes kubelet should attempt to pull (download) a container image. This setting is part of the Pod specification.

**Always:**

* Kubernetes will always pull the image from the registry when starting the pod.
* Use this if you want to ensure that the latest version of the image is used every time the pod is started.

```yml
imagePullPolicy: Always
```

**IfNotPresent:**

* Kubernetes will pull the image only if it is not already present on the node.
* This is useful to reduce network usage and avoid unnecessary image pulls

```yml
imagePullPolicy: IfNotPresent
```

**Never**

* Kubernetes will never pull the image. It assumes that the image is already present on the node.
* Use this when you have preloaded images on your nodes and do not want Kubernetes to pull the images from a registry.

**Default Behavior**

* If imagePullPolicy is not specified, the behavior depends on the image tag:
* If the image tag is :latest, the default imagePullPolicy is Always.
* If the image tag is anything other than :latest, the default imagePullPolicy is IfNotPresent.

Here’s an example of how to specify the imagePullPolicy in a pod definition:

```yml
apiVersion: v1
kind: Pod
metadata:
  name: example-pod
spec:
  containers:
  - name: example-container
    image: myregistry/myimage:latest
    imagePullPolicy: Always
```
### Ephemeral containers

### ReplicaSet
A ReplicaSet is a component in Kubernetes that ensures a specified number of replicas (pods) of a given application are running at any given time. It is responsible for maintaining the desired state of the application by ensuring that the correct number of pods are running, even if some of them fail or are terminated.

**Key Features of ReplicaSet
1.Pod Replication:
Ensures a specified number of identical pods are running at all times.
Automatically replaces failed or terminated pods to maintain the desired number of replicas.

2.Selectors:
Uses both equality-based and set-based selectors to identify the pods it should manage.
This allows for more flexible and powerful pod selection compared to its predecessor, the ReplicationController.

3.Self-Healing:
Continuously monitors the pods and ensures that the correct number of replicas are running.
If a pod goes down, the ReplicaSet will create a new one to replace it.

4.Declarative Configuration:
Defined in a YAML or JSON configuration file where the desired state is specified.
Kubernetes continuously works to maintain this desired state.

* Example YAML Configuration for a ReplicaSet
```yml
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: my-replicaset
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: my-container
        image: my-image
```
* Integration with Deployments
While ReplicaSets can be created and managed directly, they are typically used as part of a Deployment. A Deployment provides additional features, such as rolling updates, rollbacks, and versioning, by managing one or more ReplicaSets. When you create a Deployment, it automatically creates and manages ReplicaSets on your behalf.
