

## Task : Create a Pod

Create nginx pod in such way that its should mount Host directory /tmp/nginxpod inside pod at /usr/share/nginx/html location.

  * metadata
    * name : demo-volume
    * labels:  
  * containers:
    * name: app
    * image: nginx:alpine
    * mountPath: /usr/share/nginx/html
  * volumes:
    * hostpath: /tmp/nginxpod
