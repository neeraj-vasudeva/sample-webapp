FROM ubuntu:24.04
LABEL description="Simple Flask app running on Ubuntu 24.04"
LABEL maintainer="Neeraj"
LABEL version="1.0"

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install flask

COPY app.py /opt/

ENV PATH="/opt/venv/bin:$PATH"
ENV FLASK_APP=/opt/app.py

ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=8080"]

