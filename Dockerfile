FROM tomcat:9-jdk17

# Copy WAR into Tomcat webapps
WORKDIR /usr/local/tomcat/webapps

COPY target/WebApp.war .

# Replace ROOT with our WAR
RUN rm -rf ROOT && mv WebApp.war ROOT.war

# Run Tomcat in foreground (required for Docker)
CMD ["catalina.sh", "run"]
