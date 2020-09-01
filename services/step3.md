## Task : DNS resolutions

Create a Pod with name **test** and ClusterIP service with name **test-svc** for accessing this test pod using below specifications:

* Pod configuration:
  * Name of Pod: test
  * image: nginx
  * labels: app=test-app

* Service Configuration:
  * Name of service: test-svc
  * service type: ClusterIP

Get the DNS records for *test* pod and *test-svc* service and store it at ~/testpod.txt and ~/testsvc.txt respectively.
