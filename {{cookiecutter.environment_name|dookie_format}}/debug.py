import os
import django
import sys

sys.path.append(r'./{{cookiecutter.project_name}}')  # 引入实际的项目目录
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "{{cookiecutter.project_name}}.settings.dev")
django.setup()

