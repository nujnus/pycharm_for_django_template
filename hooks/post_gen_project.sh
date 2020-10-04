#!/bin/bash
echo "target folder: {{cookiecutter.environment_name|dookie_format}}"
echo "result:" `pwd`
echo "generating venv..."
python -m venv venv
echo "------------------------"
echo "初始化git"
echo "target folder:" `pwd`
git init
cd {{cookiecutter.project_name}}
echo "target folder:" `pwd`
git init
echo "初始化git [done]"
echo "------------------------"
echo "初始化mysql database"
/usr/local/mysql/bin/mysql -h127.0.0.1 -uroot -p123123 -e 'create database if not exists {{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}} default character set utf8 ;'
echo "初始化mysql database [done]"

