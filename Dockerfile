FROM centos:7
MAINTAINER dennis

RUN yum install -y wget

RUN cd /

ADD jdk-8u202-linux-x64.tar.gz /

RUN wget https://downloads.apache.org/tomcat/tomcat-7/v7.0.106/bin/apache-tomcat-7.0.106.tar.gz

RUN tar zxvf apache-tomcat-7.0.106.tar.gz

ENV JAVA_HOME=/jdk1.8.0_202
ENV PATH=$PATH:/jdk1.8.0_202/bin

CMD ["/apache-tomcat-7.0.106/bin/catalina.sh", "run"]
