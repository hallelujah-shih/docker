from centos:base_dev

run pip install httpbin gunicorn

expose 80

cmd ["/bin/gunicorn", "--workers=4", "--bind=0.0.0.0:80", "httpbin:app"]
