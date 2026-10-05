FROM tomcat:9.0-jdk11-temurin

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY WebRoot /usr/local/tomcat/webapps/ROOT

COPY src /tmp/src

RUN mkdir -p /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

RUN javac -cp "/usr/local/tomcat/lib/servlet-api.jar:/usr/local/tomcat/webapps/ROOT/WEB-INF/lib/*" -d /usr/local/tomcat/webapps/ROOT/WEB-INF/classes /tmp/src/com/EnggRoom/DBConnection.java /tmp/src/com/EnggRoom/MyListener.java

EXPOSE 8080

CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"${PORT:-8080}\\\"/\" /usr/local/tomcat/conf/server.xml && catalina.sh run"]
