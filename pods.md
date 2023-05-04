## Pods
> * Basic scheduling unit in kubernetes. Pods are often ephemeral.
  * Kubernetes doesn't run containers directly, Instead it wraps one or more containers into a higher level structure called a pod.
  * It is also smallest deployable unit that can be created, schedule and managed on a kubernetes cluster.
  * Each pod is assigned a **unique IP address** within the cluster.
  * Pods can hold ***multiple containers*** as well, but you should limit yourself when possible. Beacuse pods are scaled up and down as a unit, all containers in a pod must scale togather, regardless of their individual needs. This leads wasted resource.