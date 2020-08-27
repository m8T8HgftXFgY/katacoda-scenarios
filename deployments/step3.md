

## Task : Create a Static Pod

Create `Deployment` with name `nginx-hc` and configure the readiness and liveness probe fusing **HTTP request**. Use following configuration while creating the deployment.

* name: nginx-hc
* image: nginx
* containerPort: 80

* Liveness Probe
 * initial delay for liveness probe: 5 seconds
 * timeout for liveness probe: 1 second
 * kubelet should perform a liveness probe every 3 seconds
 * maximum restarts: 5

* Readiness Probe
 * initial delay for readiness probe: 5 seconds
 * timeout for readiness probe: 1 second
 * kubelet should perform a readiness probe every 3 seconds
 * maximum restarts: 7
