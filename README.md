# IKM Dashboard Containerize
This project is an dockerize for IKM dashboard.

### Docker Quick Start
Pull the docker image:
```sh
$ docker pull elliswu:ikm-dashboard:0.0.1
```

Start the ikm dashboard:
```sh
$ docker run -dit -p 9090:9090 -e API_HOST=<your kubernetes api server host> --name ikm-d elliswu/ikm-dashboard:0.0.1
```

The environment you can set:

| Name          | Description                                                       |
| ------------- | ----------------------------------------------------------------- |
| API_PROTOCOL  | Your Kubernetes API Server using HTTPS or HTTP. (default `HTTPS`) |
| API_HOST      | Your Kubernetes API Server Host IP Address. (default `127.0.0.1`) |
| API_PORT      | Your Kubernetes API server port number. (default `6443`)          |
| IKM_VERSION   | Your IKM version. (default `v1alpha1`)                            |
| IKM_API_GROUP | Your IKM API group (default `ikm.io`)                             |
| IKM_NAMESPACE | Your IKM namespace (default `ikm-system`)                         |

### How to Build Docker Image
First, clone this repository:
```sh
$ git clone https://github.com/ellis-wu/ikm-dashboard-docker.git
```

And clone the ikm-dashboard repository:
```sh
$ cd ikm-dashboard-docker/
$ git clone -b dev https://github.com/ellis-wu/ikm-dashboard.git
```

Then build the docker image using docker commond:
```sh
$ docker build -t <docker_registry>/ikm-dashboard:0.0.1 .
```
