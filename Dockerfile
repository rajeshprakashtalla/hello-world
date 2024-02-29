
FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY ./webapps /usr/local/tomcat/webapps_bkp

RUN cp -R /usr/local/tomcat/webapps_bkp/* /usr/local/tomcat/webapps

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

EXPOSE 8080

