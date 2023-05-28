## Copying files to and from containers
* Sometimes we may want to add a file to a running container or retrive a file from it during development phases.
* `kubectl` offers `cp` command to copy file or directories from your local to conatiners of any pod or from container to your local.

* From local to pod
```
kubectl cp index.html ngnix:/usr/share/nginx/html/index.html
```
* From pod to local
```
kubectl cp ngnix:/usr/share/nginx/html/index.html ./index.html
```
