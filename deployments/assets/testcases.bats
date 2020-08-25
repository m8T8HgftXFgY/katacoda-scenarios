#!/usr/bin/env bats

@test "create pod vote" {
  result="$(kubectl get pod vote > /dev/null 2>&1 && echo done)"
  [ "$result" == "done" ]
}

@test "create pod dc" {
  result="$(kubectl get pod db > /dev/null 2>&1 && echo done)"
  [ "$result" == "done" ]
}

@test "mock test" {
  result="$(kubectl get pod db > /dev/null 2>&1 && echo done)"
  [ "$result" == "done" ]
}

@test "mock test" {
  result="$(kubectl get pod vote > /dev/null 2>&1 && echo done)"
  [ "$result" == "done" ]
}

@test "mock test" {
  result="$(kubectl get pod db > /dev/null 2>&1 && echo done)"
  [ "$result" == "done" ]
}
