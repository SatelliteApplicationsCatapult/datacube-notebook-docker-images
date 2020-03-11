FROM luigidifraia/datacube-notebook:v1.2.0-alpha

LABEL maintainer="Luigi Di Fraia"

RUN /opt/conda/envs/cubeenv/bin/pip install --quiet --no-cache-dir \
    Cython \
    hdstats \
    lark-parser \
    odc-algo \
    --extra-index-url=https://packages.dea.ga.gov.au

# Enable additional Lab extensions
RUN jupyter labextension install dask-labextension
