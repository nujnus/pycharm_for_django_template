read -p "which tables do you want to dump?[seperate by space]: " tables
/usr/local/mysql/bin/mysqldump -h127.0.0.1 \
-u{{cookiecutter.MYSQL_USERNAME}}  \
-p{{cookiecutter.MYSQL_PASSWORD}}  \
{{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}} \
--tables $tables > dumpdata/{{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}}_dumpdata_$(date +%Y%m%d%H%M%S).sql
