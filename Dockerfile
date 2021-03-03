FROM python:3.9.2-alpine3.13
WORKDIR /app
COPY requirements.txt /app
RUN pip3 install --no-cache-dir -r requirements.txt
COPY app.py .
ENTRYPOINT [ "gunicorn" , "app:app" ]
CMD [ "--workers 2", "--threads 8", "--bind 0.0.0.0:5000" ]