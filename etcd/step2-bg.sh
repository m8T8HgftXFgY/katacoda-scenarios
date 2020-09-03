wget https://github.com/coreos/etcd/releases/download/v3.3.0-rc.1/etcd-v3.3.0-rc.1-linux-amd64.tar.gz
tar -xvzf etcd-v3.3.0-rc.1-linux-amd64.tar.gz
mv etcd-v3.3.0-rc.1-linux-amd64/etcd /usr/bin/.
mv etcd-v3.3.0-rc.1-linux-amd64/etcdctl /usr/bin/.


export ETCDCTL_API=3
ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/apiserver-etcd-client.crt --key=/etc/kubernetes/pki/apiserver-etcd-client.key snapshot save /tmp/cka-snapshotdb
