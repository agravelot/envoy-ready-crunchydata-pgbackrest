#!/bin/bash

CRUNCHY_DIR=${CRUNCHY_DIR:-'/opt/crunchy'}
    
source "${CRUNCHY_DIR}/bin/uid_postgres_no_exec.sh"

cleanup() {
    echo "Main command has finished executing. Exiting sidecard."
    # https://stackoverflow.com/questions/54921054/terminate-istio-sidecar-istio-proxy-for-a-kubernetes-job-cronjob
    curl -fsI -X POST -v http://localhost:15020/quitquitquit
}

trap cleanup EXIT

"$@"