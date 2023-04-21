FROM jupyter/base-notebook

USER root

RUN apt-get update && apt-get upgrade -y --no-install-recommends \
  && apt-get install -y --no-install-recommends build-essential

USER ${NB_UID}

RUN pip3 install --upgrade pip

RUN pip3 install --no-cache-dir 'cifsdk>=3.0,<4.0'
