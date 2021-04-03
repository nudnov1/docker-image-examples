FROM tomcat
RUN apt-get update && apt-get -y upgrade
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN cd /opt/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd /opt/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp /opt/boxfuse-sample-java-war-hello/target/onlinebookstore-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/

EXPOSE 8080
