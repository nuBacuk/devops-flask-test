FROM python:3.9.2-alpine3.13
WORKDIR /app
COPY requirements.txt /app
RUN pip3 install --no-cache-dir -r requirements.txt
COPY app.py .
ENTRYPOINT [ "gunicorn", "app:app" ]
CMD [ "w 4", "-t 8", "-b 0.0.0.0:5000" ]