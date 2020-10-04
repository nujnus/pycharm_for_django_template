/usr/local/mysql/bin/mysql -h127.0.0.1 \
-u{{cookiecutter.MYSQL_USERNAME}} \
-p{{cookiecutter.MYSQL_PASSWORD}} \
-e 'drop database if exists  {{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}};'

/usr/local/mysql/bin/mysql -h127.0.0.1 \
-u{{cookiecutter.MYSQL_USERNAME}} \
-p{{cookiecutter.MYSQL_PASSWORD}} \
-e 'create database if not exists  {{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}}  default character set utf8 ;'

/usr/local/mysql/bin/mysql -h127.0.0.1 \
-u{{cookiecutter.MYSQL_USERNAME}} \
-p{{cookiecutter.MYSQL_PASSWORD}} \
-e 'show databases;'

# 清理migrations文件
cd {{cookiecutter.project_name}}
find . -path "*/migrations/*.py" -not -name "__init__.py" -delete
find . -path "*/migrations/*.pyc"  -delete

# 重新进行makemigrations和migrate
python manage.py makemigrations --settings={{cookiecutter.project_name}}.settings.dev
python manage.py migrate --settings={{cookiecutter.project_name}}.settings.dev

# 显示构造完的结果
/usr/local/mysql/bin/mysql -h127.0.0.1 \
-u{{cookiecutter.MYSQL_USERNAME}} \
-p{{cookiecutter.MYSQL_PASSWORD}} \
-e 'use {{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}};show tables;'


#.//技巧:mysqldump -t database -u username -ppassword --tables table_name1 table_name2 table_name3 >D:\db_script.sql
#.//技巧:mysqldump -d database -u username -ppassword --tables table_name1 table_name2 table_name3>D:\db_script.sql
#.//技巧:mysqldump  database -u username -ppassword --tables table_name1 table_name2 table_name3>D:\db_script.sql
#.//技巧:mysqldump -h IP -u username -ppassword --default-character-set=utf8 \
#.//技巧:mysqldump -uroot -p database --where="true limit 10" > db.sql
#.//技巧:mysqldump dbname `cat tables.txt` > dump_file.sql


