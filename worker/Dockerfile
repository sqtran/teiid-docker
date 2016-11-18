FROM sqtran/teiid-base:9.1.1

EXPOSE 8080 9990 9999 31000 35432

WORKDIR /opt/jboss/teiid-9.1.1/

RUN sed -i -e 's/c2xhdmVfdXNlcl9wYXNzd29yZA==/YWRtaW4xMjMh/g' domain/configuration/host-slave.xml && \
    sed -i -e 's/<remote security-realm="ManagementRealm">/<remote security-realm="ManagementRealm" username="remotenode">/g' domain/configuration/host-slave.xml && \
    tr \\n \# < domain/configuration/host-slave.xml > domain/configuration/host-slave2.xml && \
    sed -i -e 's/<servers>#.*<\/servers>/<servers><server name="server-one" group="main-server-group"><\/server><\/servers>/g' domain/configuration/host-slave2.xml && \
    tr \# \\n < domain/configuration/host-slave2.xml > domain/configuration/host-slave.xml && rm domain/configuration/host-slave2.xml

CMD bin/domain.sh -b 0.0.0.0 --host-config=host-slave.xml -Djgroups.bind_addr=`hostname -i` -Djboss.domain.master.address=$masterhost -Djboss.domain.master.port=$masterport
