

## Task : Create a PV

Create Persistent Volume with name **mypv** using **HostPath** volume plugin with below config:
* name: mypv
* storage: 5Gi
* persistentVolumeReclaimPolicyy: recycle
* accessModes: ReadWriteOnce
