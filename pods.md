## Pods
> * Basic scheduling unit in kubernetes. Pods are often ephemeral.
> * Kubernetes doesn't run containers directly, Instead it wraps one or more containers into a higher level structure called a pod.
> * It is also smallest deployable unit that can be created, schedule and managed on a kubernetes cluster.
> * Each pod is assigned a **unique IP address** within the cluster.
> * Pods can hold ***multiple containers*** as well, but you should limit yourself when possible. Beacuse pods are scaled up and down as a unit, all containers in a pod must scale togather, regardless of their individual needs. This leads wasted resource.

> * a port can have one more tightly related containers that we always run togather on the same worker node and in the same linux namespace. 
> * Each pod is like a separate logical mechine with its own IP, hostname, processes and so on, Running a single application, It is just a sandbox to run container in.
> * All the container is a pod will apper to be running on the same logical machine, whereas containers in the other pods, even if they are running on the same worker node, will appear to be running on a different one. 

> * Any container in the same pod will share this same storage volumes and network resources and communicating using localhost.
> *  Kubernetes uses **YAML** to describe the desired state of the containers in a pod. This is also called a *pod spec*. These objects are passed to the kubelet to the API Server. 
> * Pods are the unit of replication in Kubernetes. If your application become too poplar and a single pod instance can't carry the load. kubernetes can be configured to deploy new replicas of your pod to the cluster as necessary.


### Lifecycle of a pod
* Through its lifecycle, a Pod can attain following states starting from **Pending** to **Running**, 
* A pod's status can be known from *phase* field.
* **Pendding:** the pod accepted by the kubernetes system but it container(s) is/are not created yet. This includes time a pod spends waiting to be scheduled as well as the time spent downloading container images over the network. 
* **Running:** The pod scheduled on a node and all its containers are created and at-least one container is in running state.
* **Succeeded:** All containers in the pod have exited with status 0 and will not be restarted. 
* **Failed:** All containers of the pod have exited and at least one container has reached a non zero status.
* **CrashLoopBackoff:** The container fails to start and is tried agin and again.
* **Unknown:** For some reason the state of the pod could not be obtained. the phase typically occurs due to an error in communicating with the node where the pod should be running. 

```
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