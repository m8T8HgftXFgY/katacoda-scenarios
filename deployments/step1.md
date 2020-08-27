

## Task : Create a Deployment

Create a Deployment with following specs,
  * metadata
    * name : nginx-deploy
    * labels:  app=web
    * replicas=3
  * containers:
    * name: nginx-deploy
    * image: nginx:alpine 
