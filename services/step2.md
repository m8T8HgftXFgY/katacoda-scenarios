## Task : Troubleshooting

You should see **nginx-deployment-ctr** deployment and **nginx-svc-ctr** service created in the current namespace.

However **nginx-svc-ctr** service is not pointing to the  pods created by **nginx-deployment-ctr** deployment. Find out why its not loadbalancing to the pods and fix it.

You shall find the  manifest for pod in current dir at  `testdeploy.yaml`.
