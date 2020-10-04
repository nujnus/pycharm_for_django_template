cd {{cookiecutter.project_name}}
read -p "Enter your appname : " name
python manage.py startapp $name
