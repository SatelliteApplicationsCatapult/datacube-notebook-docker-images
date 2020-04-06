FROM luigidifraia/datacube-notebook:v1.2.0-alpha

LABEL maintainer="Luigi Di Fraia"

RUN /opt/conda/envs/cubeenv/bin/pip install --quiet --no-cache-dir \
    Cython==0.29.15 \
    hdstats==0.1.3 \
    lark-parser==0.8.2 \
    odc-algo==0.1.dev439+gd29f1df \
    odc-ui==0.1.dev439+gd29f1df \
    --extra-index-url=https://packages.dea.ga.gov.au

# Enable additional Lab extensions
RUN jupyter labextension install dask-labextension

RUN /opt/conda/envs/cubeenv/bin/pip install --quiet --no-cache-dir \
    blosc==1.8.6 \
    cloudpickle==1.3.0 \
    dask==2.12.0 \
    distributed==2.12.0 \
    lz4==3.0.2 \
    msgpack==1.0.0 \
    numpy==1.18.1 \
    toolz==0.10.0 \
    tornado==6.0.4 \
    xarray==0.15.0
