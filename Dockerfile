FROM tomcat:11.0.3
WORKDIR /usr/local/tomcat
COPY **/*.war /usr/local/tomcat/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh","run"]