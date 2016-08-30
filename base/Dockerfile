FROM openjdk:alpine

WORKDIR  /opt/jboss
RUN apk update && apk add ca-certificates wget && update-ca-certificates && \
    wget https://repository.jboss.org/nexus/service/local/repositories/releases/content/org/jboss/teiid/teiid/9.0.3/teiid-9.0.3-wildfly-server.zip && \
    unzip teiid-9.0.3-wildfly-server.zip && rm teiid-9.0.3-wildfly-server.zip
