cd {{cookiecutter.project_name}}
celery -A {{cookiecutter.project_name}} beat -l info --scheduler django_celery_beat.schedulers:DatabaseScheduler

