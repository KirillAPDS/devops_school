FROM tomcat:9-jdk11

RUN apt-get update && \
    apt-get install -y git maven

WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && \
    cd boxfuse-sample-java-war-hello && \
    mvn package && \
    cp target/hello-1.0.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]

