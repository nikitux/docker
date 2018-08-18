# GCP stackdriver-agent for ContainerOS


## Docker 

```
docker run -d --name stackdriver --restart=unless-stopped --privileged  nikitux/gcp-stackdriver-agent:v1.0
```
## Rancher stack 

```
version: '2'
services:
  stackdriver-agent:
    privileged: true
    image: nikitux/gcp-stackdriver-agent:v1.0
    labels:
      io.rancher.container.pull_image: always
      io.rancher.scheduler.global: 'true'

```
