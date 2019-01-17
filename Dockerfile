FROM aallam/tomcat-mysql

LABEL maintainer=lighblue

ARG DB

ARG DB_USER

ARG DB_PASSWD

COPY run.sh /opt/

RUN chmod +x /opt/run.sh

VOLUME [ "/opt/init.sql" ]

VOLUME [ "/opt/tomcat/webapps" ]

ENTRYPOINT /opt/run.sh
