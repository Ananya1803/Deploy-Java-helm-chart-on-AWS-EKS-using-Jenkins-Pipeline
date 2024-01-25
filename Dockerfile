FROM tomcat:9
WORKDIR /home/ubuntu/Deploy-Java-helm-chart-on-AWS-EKS-using-Jenkins-Pipeline/target
#COPY /var/lib/jenkins/workspace/demoproject/target/hello-1.0.war /var/lib/jenkins/workspace/demoproject/
#COPY hello-1.0.war /usr/local/tomcat/webapps
ADD ./target/hello-1.0.war /home/ubuntu/Deploy-Java-helm-chart-on-AWS-EKS-using-Jenkins-Pipeline/target
CMD ["catalina.sh", "run"]
EXPOSE 8080
#

