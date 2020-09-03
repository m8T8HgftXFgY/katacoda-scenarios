

## Task : Take a backup of ETCD using etcdctl


Install the etcdctl using below commands.

```
wget https://github.com/coreos/etcd/releases/download/v3.3.0-rc.1/etcd-v3.3.0-rc.1-linux-amd64.tar.gz
tar -xvzf etcd-v3.3.0-rc.1-linux-amd64.tar.gz
mv etcd-v3.3.0-rc.1-linux-amd64/etcd /usr/bin/.
mv etcd-v3.3.0-rc.1-linux-amd64/etcdctl /usr/bin/.
```

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
