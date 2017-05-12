FROM quay.io/vektorcloud/python:2

RUN apk add --no-cache gcc g++ musl-dev && \
    pip install locustio pyzmq && \
    mkdir /locust

WORKDIR /locust

EXPOSE 8089
ENTRYPOINT ["locust"]
