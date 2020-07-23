FROM docker.io/ibmcom/websphere-liberty:20.0.0.5-full-java11-openj9-ubi
RUN mkdir /my-special-folder && chown root:root /my-special-folder
COPY DockerFile /my-special-folder
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
