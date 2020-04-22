FROM luigidifraia/datacube-notebook:dask-2.14.0-gdal-2.4.4

LABEL maintainer="Luigi Di Fraia"

# Install additional useful EO-related SAC utilities
RUN /opt/conda/envs/cubeenv/bin/pip install --quiet --no-cache-dir \
    git+https://github.com/SatelliteApplicationsCatapult/datacube-utilities.git#egg=datacube_utilities
