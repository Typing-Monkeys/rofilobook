FROM ghcr.io/typing-monkeys/rofilobook:latest

USER root

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install graphviz

USER jovyan

RUN pip install graphviz
RUN pip install plotly
RUN pip install wandb
RUN pip install torchview
