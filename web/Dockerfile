FROM maven:3.5.2-jdk-8-alpine

MAINTAINER Aamir <Aamir010@hotmail.com>

#Copy config file
COPY . /opt

#Update wget
RUN apk update \
   && apk add ca-certificates \
   && update-ca-certificates \
   && apk add --update openssl

#Change Directory
WORKDIR /opt

RUN  wget -q https://www.jahia.com/downloads/jahia/digitalexperiencemanager7.2.1/DigitalExperienceManager-EnterpriseDistribution-7.2.1.1-r56757.4188.jar \
    && wget -q http://search.maven.org/remotecontent\?filepath\=mysql/mysql-connector-java/5.1.42/mysql-connector-java-5.1.42.jar

RUN mv DigitalExperienceManager* DigitalExperienceManager.jar

#Installing Jahia
WORKDIR /opt
EXPOSE 8080
RUN chmod +x install_jahia.sh

ENTRYPOINT ["./install_jahia.sh"]
