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
