FROM maven:3-openjdk-11

RUN apt-get update && apt-get install -y git

WORKDIR /build
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

WORKDIR /build/boxfuse-sample-java-war-hello
RUN mvn package
