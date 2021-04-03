FROM tomcat:9.0
RUN	apt install maven -y
RUN cd /opt
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package /opt/boxfuse-sample-java-war-hello/
RUN	cp /opt/boxfuse-sample-java-war-hello/target/onlinebookstore-0.0.1-SNAPSHOT.wa /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["nginx","-g","daemon off;"]