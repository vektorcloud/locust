# locust

Minimal Locust Docker image

## Usage

Assuming you have a target locust file in your current directory:
```bash
docker run -dt -v $(pwd)/my_locust_file.py:/locust/locustfile.py quay.io/vektorcloud/locust:latest --host=http://example.com
```
