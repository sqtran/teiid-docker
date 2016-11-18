FROM sqtran/teiid-base:9.1.1

EXPOSE 8080 9990 9999 31000 35432

WORKDIR /opt/jboss/teiid-9.1.1/

# Adds remote user for slave node connections 
RUN echo remotenode=c54ef7a9561668df5491aaa22a8fb3dc >> domain/configuration/mgmt-users.properties

CMD bin/domain.sh -c domain.xml -b=0.0.0.0 -bmanagement=0.0.0.0 -Djgroups.bind_addr=`hostname -i`
