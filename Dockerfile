FROM ubuntu:16.04
RUN apt-get update
RUN apt install tomcat9 -y
RUN	apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package
RUN	cp target/onlinebookstore-0.0.1-SNAPSHOT.wa /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["nginx","-g","daemon off;"]