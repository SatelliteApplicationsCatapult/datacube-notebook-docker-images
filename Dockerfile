FROM luigidifraia/datacube-notebook:v3.1.0-alpha

LABEL maintainer="Luigi Di Fraia"

# Install additional useful EO-related SAC utilities
RUN /opt/conda/envs/cubeenv/bin/pip install --no-cache-dir \
    git+https://github.com/SatelliteApplicationsCatapult/datacube-utilities.git#egg=datacube_utilities && \
    rm -rf /home/$NB_USER/.local && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Install extra packages as root
USER root

RUN apt-get update \
    && apt-get install -yq --no-install-recommends \
    lftp \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID
