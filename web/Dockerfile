FROM centos:7

MAINTAINER Aamir <Aamir@nexteonsolutions.com>

RUN yum install unzip epel-repo wget -y

COPY . /tmp/

#Install Java-8
WORKDIR /tmp
RUN rpm -ivh jdk-8u11-linux-x64.rpm

#Install Maven 3.3
WORKDIR /opt
RUN unzip /tmp/apache-maven-3.3.3-bin.zip
RUN mv apache-maven-3.3.3 maven
RUN cp /tmp/maven.sh /etc/profile.d/maven.sh
RUN chmod +x /etc/profile.d/maven.sh
RUN source /etc/profile.d/maven.sh

#Installing Jahia
WORKDIR /tmp
EXPOSE 8080
RUN chmod +x install_jahia.sh

CMD ["./install_jahia.sh"]
