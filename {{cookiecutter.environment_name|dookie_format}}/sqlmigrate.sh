cd {{cookiecutter.project_name}}
read -p "Enter your app name : " appname
read -p "Enter your migrate name : " name
python manage.py sqlmigrate \
--settings={{cookiecutter.project_name}}.settings.dev $appname $name
