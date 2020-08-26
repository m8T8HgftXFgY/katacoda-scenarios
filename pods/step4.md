

## Task : Create a pod in the given namespace.

Create a Pod with following specs,

  * metadata
    * name : mypod
    * namespace: mynamespace
    * labels:
        app:mypod
  * containers:
    * name: myapp
    * image: nginx:alpine
