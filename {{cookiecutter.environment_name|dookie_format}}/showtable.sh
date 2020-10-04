read -p "Enter your tablename : " name
name=`echo $name| awk '{print tolower($0)}'`
/usr/local/mysql/bin/mysql -h127.0.0.1 \
-u{{cookiecutter.MYSQL_USERNAME}} \
-p{{cookiecutter.MYSQL_PASSWORD}} \
-e "use {{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}};describe {{cookiecutter.app_name}}${name}"
