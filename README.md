# docker-tomcat_mysql

## Github

https://github.com/lighblue/docker-tomcat_mysql



## Rnning

```bash

chmod -R 766 webapps

docker run -d --name='tm' \

         -e DB=dbname \

         -e DB_USER=username \

         -e DB_PASSWD=password \

         -v <fullpath>/init.sql:/opt/init.sql \

         -v <fullpath>/webapps:/opt/tomcat/webapps \ 

         -p 8080:8080 lighblue/tomcat-mysql
```
