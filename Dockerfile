FROM kubeflownotebookswg/jupyter-pytorch-cuda-full:v1.7.0

USER root

RUN apt-get update -y
RUN apt-get upgrade -y

RUN pam-auth-update
RUN echo 'root:Docker!' | chpasswd

USER jovyan

RUN echo "${USER}:1234patata" | chpasswd

RUN pip install plotly
RUN pip install darts
RUN pip install -U torch torchaudio --no-cache-dir
RUN pip install wandb
RUN pip install ipywidgets==8.0.4
RUN jupyter nbextension enable --py widgetsnbextension
