FROM tomcat:latest as tomcats




# WORKDIR /root/
# RUN git clone https://github.com/tarekkhoury/mywebapplication.git




RUN apt-get update && apt-get install -y \
git \
default-jdk \
maven

WORKDIR /root/
RUN git clone https://github.com/tarekkhoury/mywebapplication.git





RUN mvn -f /root/mywebapplication/pom.xml clean package
COPY /root/mywebapplication/target/mywebapplication.war    /usr/local/tomcat/webapps/mywebapplication.war
CMD /usr/local/bin/shell.sh ; sleep infinity

