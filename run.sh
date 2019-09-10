#!/bin/bash

docker run -i -t -p 2222:8888 -v ~/Desktop/workspace/docker_anaconda3/notebooks:/opt/notebooks -v ~/Desktop/workspace/docker_anaconda3/data:/opt/data continuumio/anaconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"
