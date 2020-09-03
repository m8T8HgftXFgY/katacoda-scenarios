

## Task : Restore ETCD backup

ETCD backup has been stored at `/tmp/cka-snapshotdb' restore it using below specifications.

* ETCDCTL_API=3
* endpoints : https://127.0.0.1:2379
* CA File: /etc/kubernetes/pki/etcd/ca.crt
* Client Cert file : /etc/kubernetes/pki/apiserver-etcd-client.crt
* Key file : /etc/kubernetes/pki/apiserver-etcd-client.key
* snapshot name: cka-snapshotdb
