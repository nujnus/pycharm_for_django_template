echo "清除mysql database"
/usr/local/mysql/bin/mysql -h127.0.0.1 \
-u{{cookiecutter.MYSQL_USERNAME}} \
-p{{cookiecutter.MYSQL_PASSWORD}} \
-e 'drop database if exists {{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}} ;'
echo "清除mysql database [done]"
