FROM tomcat:8.0

ADD **/*.war /Users/swaminarayan/darshan/apache-tomcat-8.0.23/webapps
#RUN cp -a **/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ['catalina.sh','run']
