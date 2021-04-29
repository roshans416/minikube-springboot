# Deploy a Springbook app to Kubernetes (Minikube)


### PRE-REQUISITES

1. `Kubectl` : Install **kubectl** CLI
2. `Minikube or any other Kubernetes clusters` : 

To install Minikube, 

**Linux**
```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
```

**Mac**
```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 \
  && chmod +x minikube
```

## DEPLOY SPRING-BOOT APP AND MYSQL TO KUBERNETES

**Execute the following script**
```
./deploy-spring-boot.sh
```

### CONFIGURATION DETAILS

1. Created 2 replicas of Spring boot app
2. Enabled Readiness and Liveness Checks
3. Exposed the application using a Service definition.


## Additional information: Task 3, Requirement 6

### Enable CI for the current setup

*Recommendation: Enable Skaffold local CI setup*

**Features**

1. `Automated builds` - Changes in local files will trigger a build 
2. `Supported build strategies` - Dockerfile, Jib (For maven and gradle), Kaniko (Docker-less OCI image builder) etc
3. `Deployment` - Using Helm or Kubectl
 
For more info, please refer [Skaffold documentation](https://github.com/GoogleContainerTools/skaffold)
