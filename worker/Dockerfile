FROM sqtran/teiid-base:latest

EXPOSE 8080 9990 9999 31000 35432

RUN sed -i -e 's/c2xhdmVfdXNlcl9wYXNzd29yZA==/YWRtaW4xMjMh/g' /opt/jboss/teiid-9.0.3/domain/configuration/host-slave.xml && \
    sed -i -e 's/<remote security-realm="ManagementRealm">/<remote security-realm="ManagementRealm" username="remotenode">/g' /opt/jboss/teiid-9.0.3/domain/configuration/host-slave.xml

CMD /opt/jboss/teiid-9.0.3/bin/domain.sh -b 0.0.0.0 --host-config=host-slave.xml -Djgroups.bind_addr=`hostname -i` -Djboss.domain.master.address=$masterhost -Djboss.domain.master.port=$masterport
