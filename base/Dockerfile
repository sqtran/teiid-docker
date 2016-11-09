FROM openjdk:alpine

WORKDIR  /opt/jboss
RUN apk update && apk add ca-certificates wget && update-ca-certificates && \
    wget https://repository.jboss.org/nexus/service/local/repositories/releases/content/org/jboss/teiid/teiid/9.1.1/teiid-9.1.1-wildfly-server.zip && \
    unzip teiid-9.1.1-wildfly-server.zip && rm teiid-9.1.1-wildfly-server.zip && \
    cp teiid-9.1.1/docs/teiid/datasources/mysql/modules/ teiid-9.1.1/ -R && \
    wget http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.6/mysql-connector-java-5.1.6.jar -O teiid-9.1.1/modules/com/mysql/main/mysql-connector-java-5.1.6.jar && \
    sed -i -e 's/mysql-connector-java-5.1.5.jar/mysql-connector-java-5.1.6.jar/g' /opt/jboss/teiid-9.1.1/modules/com/mysql/main/module.xml
