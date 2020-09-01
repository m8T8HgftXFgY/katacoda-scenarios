

## Task : Create a ReplicaSet

Create a ReplicaSet with following Specs,
* metadata:
  * name: nginx-rs
  * labels: app=nginx-rs
* spec:
  * replicas: 5
  * labels: app=nginx-rs
  * image: nginx:latest
