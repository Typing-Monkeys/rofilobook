FROM kubeflownotebookswg/jupyter-pytorch-cuda-full:v1.7.0

USER root

RUN apt-get update -y
RUN apt-get upgrade -y

USER jovyan

RUN pip install plotly darts
