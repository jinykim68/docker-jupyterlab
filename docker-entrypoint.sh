#!/bin/sh

/opt/conda/bin/conda install jupyter -y --quiet \
    && /opt/conda/bin/jupyter lab \
        --ip='0.0.0.0' --port=8888 \
        --no-browser --allow-root \
        --notebook-dir=${JUPYTER_NOTEBOOKS_DIR}
