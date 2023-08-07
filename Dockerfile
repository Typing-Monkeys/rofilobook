FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel

RUN pip install plotly
RUN pip install wandb
RUN pip install jupyterlab
RUN pip install notebook
RUN pip install ipywidgets==8.0.4

RUN useradd -ms /bin/bash rofilo
USER rofilo
WORKDIR /home/rofilo

ENTRYPOINT jupyter lab
RUN jupyter nbextension enable --py widgetsnbextension
