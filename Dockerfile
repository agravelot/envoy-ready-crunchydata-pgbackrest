FROM registry.developers.crunchydata.com/crunchydata/crunchy-pgbackrest:ubi8-2.51-1

ENTRYPOINT ["/opt/crunchy/bin/uid_postgres.sh"]

# https://stackoverflow.com/questions/54921054/terminate-istio-sidecar-istio-proxy-for-a-kubernetes-job-cronjob
CMD ["/opt/crunchy/bin/start.sh; x=$?; wget -q --post-data='' -S -O /dev/null http://127.0.0.1:15020/quitquitquit && exit $x"]
