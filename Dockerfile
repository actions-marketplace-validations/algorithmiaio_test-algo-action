from ubuntu:16.04


RUN apt-get update && apt-get install -y \
    python \
    python-setuptools \
    python-pip


RUN pip install algorithmia==1.2.0

COPY entrypoint.py /entrypoint.py
RUN chmod +x /entrypoint.py
ENTRYPOINT ["/entrypoint.py"]