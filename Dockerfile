FROM luigidifraia/datacube-notebook:v1.2.0-alpha

LABEL maintainer="Luigi Di Fraia"

#USER root

#RUN apt-get install -y --no-install-recommends python-dev \
#    && apt-get clean \
#    && rm -rf /var/lib/apt/lists/*

#RUN pip install --no-cache-dir \
RUN pip install --quiet --no-cache-dir \
    Cython \
    hdstats \
    lark-parser \
    odc-algo \
    --extra-index-url=https://packages.dea.ga.gov.au

# Enable additional Lab extensions
RUN jupyter labextension install dask-labextension
