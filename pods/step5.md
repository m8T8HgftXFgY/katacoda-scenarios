

## Task : Create a Multi-container Pod with name **multi-c-pod**, with below configuration.

Create a Pod with following specs,
  * metadata
    * name : multi-c-pod
    * labels:
        app: multi-c-pod
  * containers:
    * name: nginx
    * image: nginx:alpine
    * name: redis
    * image: redis
    * name: cache
    * image: memcached
