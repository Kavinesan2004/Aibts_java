# Use Tomcat 9 (Compatible with Ant/Java 8+ projects)
FROM tomcat:9.0

# Delete the default "Welcome to Tomcat" page
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy YOUR project into the server
COPY ROOT.war /usr/local/tomcat/webapps/

# Start the server
CMD ["catalina.sh", "run"]