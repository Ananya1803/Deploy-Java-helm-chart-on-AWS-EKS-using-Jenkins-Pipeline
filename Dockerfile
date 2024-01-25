FROM tomcat:9

# Set the working directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file from the build context to the current directory
COPY ./target/hello-1.0.war .

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
