# docker-jupyterlab

Example *docker-compose.yml* for **Jupyterlab**

## Getting Started

### Prerequisites

*Docker Engine* needs to be installed on your machine ([Docker Documentation](https://docs.docker.com/)).

### Environment variables

| Variable                   | Description                                                               |
| -------------------------- | ------------------------------------------------------------------------- |
| `HOST_PORT`                | Set the port of host machine                                              |
| `JUPYTERLAB_CONFIG_DIR`    | Set the location to store jupyterlab config folder in the container       |
| `JUPYTERLAB_NOTEBOOKS_DIR` | Set the location to store notebook files in the container                 |
| `JUPYTERLAB_DATA_DIR`      | Set the location to store data in the container                           |

### Get it running

```bash
docker-compose up -d
```

## References

* [Anaconda3 docker image](https://hub.docker.com/r/continuumio/anaconda3/)
* [Github docker-library issues](https://github.com/ContinuumIO/docker-images/issues)
* [Github jupyterlab](https://github.com/jupyterlab/jupyterlab)
