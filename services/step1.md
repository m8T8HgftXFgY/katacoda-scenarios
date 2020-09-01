

## Task : Create a Service

Create a Deployment with name **nginx-deploy** using below specifications.
* name : nginx-deploy
* image : nginx:alpine
* labels: app=nginx-deploy
* replicas: 4

Create a Service **nginx-svc** for the Deployment **nginx-deploy** using below specifications:
* name of Service: nginx-svc
* type of service: NodePort
* NodePort: 31089
