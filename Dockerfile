FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install default-jdk -y
RUN apt-get install tomcat9 -y
RUN apt-get install maven -y
RUN apt-get install git -y

WORKDIR /app

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && \
    cd boxfuse-sample-java-war-hello && \
    mvn package && \
    cp target/hello-1.0.war /var/lib/tomcat9/webapps/

CMD ["/usr/share/tomcat9/bin/catalina.sh", "run"]

