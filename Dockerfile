FROM tomcat:8.5.35-jre10
COPY . /usr/local/tomcat/webapps/test_tomcat/
EXPOSE 8080
RUN chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]