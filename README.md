# docker-tomcat_mysql

## Github

https://github.com/lighblue/docker-tomcat_mysql



## Running

```bash

chmod -R 777 webapps

docker run -d --name='tm' \

         -e DB=dbname \

         -e DB_USER=username \

         -e DB_PASSWD=password \

         -v <fullpath>/init.sql:/opt/init.sql \

         -v <fullpath>/webapps:/opt/tomcat/webapps \ 

         -p 8080:8080 lighblue/tomcat-mysql
```

## 8.9.57 (Java 8 + Tomcat 9 + Mysql 5.7)

```bash

chmod -R 777 webapps

docker run -d --name='tm' \

        -e MYSQL_DATABASE=dbname \

        -e MYSQL_USER=username \

        -e MYSQL_PASSWORD=password \

        -v <fullpath>/entrypoint-initdb:/docker-entrypoint-initdb.d \

        -v <fullpath>/webapps:/opt/tomcat/webapps \

        -p 8080:8080 lighblue/tomcat-msyql:8.9.57
```
