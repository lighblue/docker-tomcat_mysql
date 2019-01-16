#!/bin/bash

set -e
set -x

if [ ! -f /opt/inited ] ; then
    db_init=/opt/init.sql

    if [ $DB ] ; then
        echo "create database $DB;" >> initdb.sql
    fi

    if [ $DB_USER ] ; then
        passwd=''
        [ $DB_PASSWD ] && passwd=$DB_PASSWD
        echo "create user '$DB_USER'@'%' identified by '$passwd';" >> initdb.sql

        db='*'
        [ $DB ] && db=$DB
        echo "grant all privileges on $db.* to '$DB_USER'@'%';" >> initdb.sql
    fi

    /etc/init.d/mysql start

    mysql -u root < initdb.sql

    if [ -f $db_init ] ; then
        [ $DB ] && mysql -u root $DB < $db_init
    fi

    # rm -rf $TOMCAT_HOME/webapps/*

    touch /opt/inited
fi

/run.sh


