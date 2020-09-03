launch.sh
apt-get install -yq bats bc

wget https://github.com/coreos/etcd/releases/download/v3.3.0-rc.1/etcd-v3.3.0-rc.1-linux-amd64.tar.gz
tar -xvzf etcd-v3.3.0-rc.1-linux-amd64.tar.gz
mv etcd-v3.3.0-rc.1-linux-amd64/etcd /usr/bin/.
mv etcd-v3.3.0-rc.1-linux-amd64/etcdctl /usr/bin/.
