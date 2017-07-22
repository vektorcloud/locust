FROM quay.io/vektorcloud/python:2

RUN apk add --no-cache gcc g++ musl-dev bash && \
    pip install locustio pyzmq && \
    mkdir /locust

WORKDIR /locust
COPY run.sh /run.sh

EXPOSE 8089
ENTRYPOINT ["locust"]
