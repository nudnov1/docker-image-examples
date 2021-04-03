#------------------------------------------------
# My first Docker immage. Tomcat & Java test site
# Made by Aleksei Nudnov. 03-04-2021
#------------------------------------------------

# Image:
FROM ubuntu:20.04

# Timezone:
#ENV TZ=Asia/Jerusalem
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# update, install software:
RUN apt-get update
RUN install tomcat9 -y
RUN apt-get install default-jdk -y
RUN apt-get install git -y
RUN apt-get install maven -y

# Clone repository:
RUN cd /opt/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello/

# Execute:
RUN mvn -f "boxfuse-sample-java-war-hello/pom.xml" package
# Copy project to the webserver:
RUN cp boxfuse-sample-java-war-hello/target/*.war /var/lib/tomcat9/webapps/

# Expose port:
EXPOSE 8080
