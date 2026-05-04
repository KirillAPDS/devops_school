# FROM tomcat:9-jdk11

# RUN apt-get update && \
#     apt-get install -y git maven

# WORKDIR /app
# RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && \
#     cd boxfuse-sample-java-war-hello && \
#     mvn package && \
#     cp target/hello-1.0.war /usr/local/tomcat/webapps/ROOT.war

# EXPOSE 8080
# CMD ["catalina.sh", "run"]

FROM ubuntu:18.04
RUN apt update && \
        apt install -y \
                default-jdk \
                tomcat9 \
                maven \
                git

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin
ENV CATALINA_HOME /usr/share/tomcat9
ENV CATALINA_BASE /var/lib/tomcat9

WORKDIR /app

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && \
    cd boxfuse-sample-java-war-hello && \
    mvn package && \
    cp target/hello-1.0.war /var/lib/tomcat9/webapps/

EXPOSE 8080

CMD ["/usr/share/tomcat9/bin/catalina.sh", "run"]
