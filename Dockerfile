FROM continuumio/anaconda3

ENV JUPYTER_CONFIG_DIR=${JUPYTERLAB_CONFIG_DIR}
ENV JUPYTER_NOTEBOOKS_DIR=${JUPYTERLAB_NOTEBOOKS_DIR}

COPY ["requirements.txt", "docker-entrypoint.sh", "./"]

# apt
RUN apt update \
    && apt install -y \
        octave octave-symbolic octave-miscellaneous \
        gnuplot ghostscript \
    && apt clean

# conda
RUN conda install -c \
        conda-forge jupyterlab octave_kernel \
    && conda install \
        mpld3 nodejs \
    && conda clean --all

# pip
RUN pip install --upgrade pip \
    && pip install -r requirements.txt 

RUN chmod +x docker-entrypoint.sh
ENTRYPOINT [ "./docker-entrypoint.sh" ]
