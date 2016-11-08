FROM sqtran/teiid-base:9.0.3

EXPOSE 8080 9990 9999 31000 35432

RUN /opt/jboss/teiid-9.0.3/bin/add-user.sh admin admin123! && \
    echo remotenode=c54ef7a9561668df5491aaa22a8fb3dc >> /opt/jboss/teiid-9.0.3/domain/configuration/mgmt-users.properties

CMD /opt/jboss/teiid-9.0.3/bin/domain.sh -c domain.xml -b=0.0.0.0 -bmanagement=0.0.0.0 -Djgroups.bind_addr=`hostname -i`
