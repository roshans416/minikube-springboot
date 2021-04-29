#!/bin/bash
echo "Deploying MySQL"
kubectl create -f ./kubernetes-manifest/mysql-db/dc.yaml
kubectl create -f ./kubernetes-manifest/mysql-db/svc.yaml

echo "Deploying SPRING-BOOT app"
kubectl create -f ./kubernetes-manifest/users-mysql-app/dc.yaml
kubectl create -f ./kubernetes-manifest/users-mysql-app/svc.yaml
