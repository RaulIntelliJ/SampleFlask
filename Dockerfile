# we are extending everything from tomcat:8.0 image ...
FROM tomcat:8.0
MAINTAINER rmartinez
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY ROOT.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat
EXPOSE 8080
CMD ["catalina.sh", "run"]
