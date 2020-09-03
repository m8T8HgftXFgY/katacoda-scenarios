#!/bin/bash

cat > /tmp/pods.bats << EOF

#!/usr/bin/env bats

@test "create pod vote" {
  result="\$(kubectl get pod vote -n default > /dev/null 2>&1 && echo done)"
  [ "\$result" == "done" ]
}

@test "troubleshoot pod " {
  result="\$(kubectl get pod nginx -n default > /dev/null 2>&1 && echo done)"
  [ "\$result" == "done" ]
}

@test "static pod " {
  result="\$(kubectl get pod static-pod-controlplane -n default > /dev/null 2>&1 && echo done)"
  [ "\$result" == "done" ]
}

@test "create pod in ns" {
  result="\$(kubectl get pod mypod -n mynamespace > /dev/null 2>&1 && echo done)"
  [ "\$result" == "done" ]
}


EOF
