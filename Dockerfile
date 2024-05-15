FROM ghcr.io/pschleiter/gunicorn:v22.0.0.1

RUN pip install --no-cache-dir uvicorn==0.29.0

EXPOSE 80

ENTRYPOINT ["gunicorn", "-k", "uvicorn.workers.UvicornWorker", "-c", "gunicorn_conf.py"]