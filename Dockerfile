# Use the official Tomcat image from the Docker hub
FROM tomcat:latest

# Copy all applications from the webapps.dist directory to the main webapps directory
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

# Copy the .war file from the local context into the Tomcat webapps directory
# If your .war file has a specific name, replace '*.war' with the correct filename, e.g., 'myapp.war'
COPY ./myapp.war /usr/local/tomcat/webapps/

# Expose the Tomcat default port
EXPOSE 8080
