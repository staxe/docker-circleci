FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install gcc python2.7 python-dev -y

RUN curl -LO https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm -f get-pip.py && \
    pip install pip --upgrade && \
    pip install ansible && \
    pip install boto && \
    pip install botocore && \
    pip install boto3