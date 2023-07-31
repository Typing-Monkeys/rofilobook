FROM kubeflownotebookswg/jupyter-pytorch-cuda-full:v1.7.0

RUN echo '1234patata' | passwd --stdin root 
RUN echo '1234patata' | passwd --stdin jovyan 

USER root

RUN apt-get update -y
RUN apt-get upgrade -y

USER jovyan

RUN echo "${USER}:1234patata" | chpasswd

RUN pip install plotly
RUN pip install darts
RUN pip install -U torch torchaudio --no-cache-dir
RUN pip install wandb
RUN pip install ipywidgets==8.0.4
RUN jupyter nbextension enable --py widgetsnbextension
