FROM aallam/tomcat-mysql

ARG DB

ARG DB_USER

ARG DB_PASSWD

COPY run.sh /opt/

RUN chmod +x /opt/run.sh

# RUN touch /opt/init.sql

VOLUME [ "/opt/init.sql" ]

VOLUME [ "/opt/tomcat/webapps" ]

ENTRYPOINT /opt/run.sh