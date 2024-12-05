FROM ghcr.io/pschleiter/gunicorn:v23.0.0

RUN pip install --no-cache-dir uvicorn==0.32.1

EXPOSE 80

ENTRYPOINT ["gunicorn", "-k", "uvicorn.workers.UvicornWorker", "-c", "gunicorn_conf.py"]
