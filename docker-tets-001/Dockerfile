#------------------------------------------------
# My first Docker immage. Tomcat & Java test site
# Made by Aleksei Nudnov. 03-04-2021
#------------------------------------------------

# Image:
# FROM tomcat
FROM ubuntu:20.04

# update, install software:
RUN apt-get update && apt-get -y upgrade
RUN install tomacate9 -y
RUN apt-get install default-jdk -y
RUN apt-get install git -y
RUN apt-get install maven -y

# Clone repository:
RUN cd /opt/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello/

# Execute:
RUN mvn -f "boxfuse-sample-java-war-hello/pom.xml" package
# Copy:
RUN cp boxfuse-sample-java-war-hello/target/*.war /var/lib/tomcat9/webapps/

# Expose port:
EXPOSE 8080
# End.