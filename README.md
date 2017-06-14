# locust

Minimal [Locust](https://github.com/locustio/locust) Docker image build

## Usage

The below usage examples assume you have a `locustfile.py` file in your current directory

### Standalone

```bash
docker run -d \
           -p 8089:8089 \
           -v $(pwd)/locustfile.py:/locust/locustfile.py \
           quay.io/vektorcloud/locust:latest --host=http://example.com
```

### Distributed

To run locust in distrbuted mode with multiple workers, use the `docker-compose.yml` file included in the repo:
```bash
LOCUST_TARGE=http://example.com docker-compose up -d
docker-compose scale worker=3
```
