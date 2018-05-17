FROM python:3-slim
COPY . /usr/src
WORKDIR /usr/src
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost/ || exit 1

CMD ["flask","run","--host","0.0.0.0"]
