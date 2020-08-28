

## Task : Init Container

In the below pod's configuration modify the configuration so that **index.html** file created by **init-app** container will be mounted at **/usr/share/nginx/html** by **nginx-app** container.


```
apiVersion: v1
kind: Pod
metadata:
  name: init-pod
spec:
  containers:
  - name: nginx-app
    image: nginx
    ports:
    - containerPort: 80
  initContainers:
  - name: init-app
    image: busybox
    command:
    - wget
    - "-O"
    - "/work-dir/index.html"
    - http://kubernetes.io
  dnsPolicy: Default

  ```

#### Tip: Same configuration you can find in **initcontainer.yaml** in host directory. Modify the configuration and apply it.
