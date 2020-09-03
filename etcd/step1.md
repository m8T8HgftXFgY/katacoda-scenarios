

## Task : Take a backup of ETCD using etcdctl


List the ETCD members and check their health. Use below parameters with etcdctl.

* ETCDCTL_API=3
* endpoints : https://127.0.0.1:2379
* CA File: /etc/kubernetes/pki/etcd/ca.crt
* Client Cert file : /etc/kubernetes/pki/apiserver-etcd-client.crt
* Key file : /etc/kubernetes/pki/apiserver-etcd-client.key


Take a snapshot of the ETCD and save in the `/root` directory with name `snapshotdb`.

* ETCDCTL_API=3
* endpoints : https://127.0.0.1:2379
* CA File: /etc/kubernetes/pki/etcd/ca.crt
* Client Cert file : /etc/kubernetes/pki/apiserver-etcd-client.crt
* Key file : /etc/kubernetes/pki/apiserver-etcd-client.key
* snapshot name: snapshotdb
