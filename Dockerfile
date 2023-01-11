FROM openremote/controller:latest
COPY openremote.config.xml /usr/local/openremote/webapps/controller/WEB-INF/conf/openremote.config.xml
EXPOSE 8080
