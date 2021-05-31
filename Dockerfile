FROM tomcat:latest




# WORKDIR /root/
# RUN git clone https://github.com/tarekkhoury/mywebapplication.git




RUN apt-get update && apt-get install -y \
git \
default-jdk \
maven

WORKDIR /root/
RUN git clone https://github.com/tarekkhoury/mywebapplication.git





RUN mvn -f /root/mywebapplication/pom.xml clean package
RUN cp /root/mywebapplication/target/mywebapplication.war    /usr/local/tomcat/webapps/mywebapplication.war

