FROM ubuntu:latest
RUN apt update
RUN apt install default-jre -y
RUN mkdir /tomcat
WORKDIR /tomcat
ADD https://archive.apache.org/dist/tomcat/tomcat-10/v10.0.8/bin/apache-tomcat-10.0.8.tar.gz .
RUN tar -xvf apache-tomcat-10.0.8.tar.gz
RUN mv apache-tomcat-10.0.8/* /tomcat
EXPOSE 8080
ENTRYPOINT ["/tomcat/bin/catalina.sh", "run"]









