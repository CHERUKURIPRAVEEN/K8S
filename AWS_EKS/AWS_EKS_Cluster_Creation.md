### EKS CLUSTER CREATION ###
```
eksctl create cluster --name EKS-CLUSTER-DEV-01 --region us-east-1 --vpc-public-subnets (subnet-id),(subnet-id) --vpc-private-subnets (subnet-id),(subnet-id)  --without-nodegroup
```
```
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKS-CLUSTER-DEV-01 --approve
````
```
eksctl create nodegroup --cluster=EKS-CLUSTER-DEV-01 --region=us-east-1 --name=EKS-CLUSTER-DEV-01-ng-public1 --node-type=t3.medium --nodes=1 --nodes-min=1 --nodes-max=2 --node-volume-size=20 --ssh-access --ssh-public-key=EKS --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
```
