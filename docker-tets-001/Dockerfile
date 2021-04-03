#------------------------------------------------
# My first Docker immage. Tomcat & Java test site
# Made by Aleksei Nudnov. 03-04-2021
#------------------------------------------------

FROM tomcat

# update, install software:
RUN apt-get update && apt-get -y upgrade
RUN apt-get install default-jdk -y
RUN apt-get install maven -y

# Clone repository:
RUN cd /opt/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello/

# Execute:
RUN mvn package
RUN cp /opt/boxfuse-sample-java-war-hello/target/onlinebookstore-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/

# Expose port:
EXPOSE 8080