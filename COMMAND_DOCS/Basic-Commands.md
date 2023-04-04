01. kubectl get pods
02. kubectl get pods -A
03. kubectl get describe pods <pod name>
04. kubectl explain pod <pod name>
05. kubectl get svc
06. kubectl get svc all
07. kubectl get all --all-namespaces              # List all services and namespace
08. kubectl get services                          # List all services in the namespace
09. kubectl get pods --all-namespaces             # List all pods in all namespaces
10. kubectl get pods -o wide                      # List all pods in the current namespace, with more details
11. kubectl get deployment my-dep                 # List a particular deployment
12. kubectl get pods                              # List all pods in the namespace
13. kubectl get pod my-pod -o yaml                # Get a pod's YAML
