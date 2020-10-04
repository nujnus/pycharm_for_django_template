from .base import *
import pymysql

pymysql.install_as_MySQLdb()

SHELL_PLUS = "ipython"

# ------------------------------------
CELERY_BROKER_URL = '{{cookiecutter.CELERY_BROKER_URL}}'  # Broker配置，使用Redis作为消息中间件
CELERY_RESULT_BACKEND = '{{cookiecutter.CELERY_RESULT_BACKEND}}'  # BACKEND配置，这里使用redis
CELERY_RESULT_SERIALIZER = 'json'  # 结果序列化方案
# ------------------------------------

DEBUG = True

INSTALLED_APPS += ['{{cookiecutter.app_name}}','rest_framework', 'django_extensions']
# AttributeError: Manager isn't available; 'auth.User' has been swapped for 'app1.Test_user_model'


AUTH_USER_MODEL = "{{cookiecutter.app_name}}.{{cookiecutter.AUTH_USER_MODEL|ToPascalCase}}"  # "app1.Test_user_model"

REST_FRAMEWORK = {
}

MIDDLEWARE += []

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': '{{cookiecutter.DEV_MYSQL_DB_NAME|dookie_format}}',
        'USER': '{{cookiecutter.MYSQL_USERNAME}}',
        'PASSWORD': '{{cookiecutter.MYSQL_PASSWORD}}',
        'HOST': '{{cookiecutter.MYSQL_HOST}}',
        'PORT': '{{cookiecutter.MYSQL_PORT}}'
    }
}
