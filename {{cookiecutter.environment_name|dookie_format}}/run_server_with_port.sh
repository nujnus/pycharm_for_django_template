read -t 5 -p "server number(default is 0):" number  #5秒后自动设置为默认值
number=${number:-0}
cd {{cookiecutter.project_name}}
python manage.py runserver --settings={{cookiecutter.project_name}}.settings.dev  127.0.0.1:808$number


