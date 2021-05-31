#Set Task
#Давайте так: начните с базового образа Томкат.
#FROM Tomcat
#Дальше - установите maven, default-jdk, git
#Склонируйте репозиторий в контейнер
#Соберите maven-ом и подложите артефакт Томкату.
FROM Tomcat as tomcat
RUN apt-get update
RUN apt-get maven -y
RUN apt-get default-jdk -y
RUN apt-get git -y