#!bin/bash
kops create cluster --name=praveentrainigs.xyz --state=s3://praveentrainigs.xyz --zones=us-east-1a,us-east-1b,us-east-1c,us-east-1d --nodes-count=3 --node-size=t2.micro --master-size=t2.micro --master-volume-size 10 --node-volume-size 10 --dns-zone=praveentrainings.xyz --yes
