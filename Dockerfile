FROM tomcat:9.0.75

WORKDIR app
COPY  . .

EXPOSE 8080
CMD ["catalina.sh", "build"]
CMD ["catalina.sh", "run"]