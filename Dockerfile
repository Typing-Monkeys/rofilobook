FROM kubeflownotebookswg/jupyter-pytorch-cuda-full:v1.7.0

USER root

RUN apt-get update -y
RUN apt-get upgrade -y

USER jovyan

RUN pip install plotly darts
RUN pip install -U torch torchaudio --no-cache-dir
RUN pip install wandb
RUN pip install ipywidgets==8.0.4
RUN jupyter nbextension enable --py widgetsnbextension
