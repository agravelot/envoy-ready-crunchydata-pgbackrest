FROM registry.developers.crunchydata.com/crunchydata/crunchy-pgbackrest:ubi8-2.51-1

COPY ./entrypoint.sh /opt/crunchy/bin/uid_postgres.sh
ENTRYPOINT ["/opt/crunchy/bin/uid_postgres.sh"]

CMD ["/opt/crunchy/bin/start.sh"]
