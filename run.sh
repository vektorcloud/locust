#!/bin/bash

function _test() {
  timeout -t1 bash -c '(echo >/dev/tcp/master/5557) &>/dev/null'
  if [[ $? == "0" ]]; then
    echo "test OK"
  else
    echo "connecting to master FAILED"
    exit 1
  fi
}

function testloop() { while :; do _test; sleep 5; done; }

testloop &
echo "ARGS: $@"
locust $@
