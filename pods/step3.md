

## Task : Create a Static Pod

Create a Pod with given configuration in the **/etc/kubernetes/manifests** of any of the worker node . So the pod should come up when kubelet service start


### Task:

- Create a static Pod with below configuration.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: static-pod
  labels:
     app: nginx
spec:
  containers:
  - name: nginx-demo
    image: nginx:alpine
    ports:
    - containerPort: 80
```
