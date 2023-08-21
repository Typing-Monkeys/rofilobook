FROM ghcr.io/typing-monkeys/rofilobook:latest

USER root

RUN apt-get install graphviz -y

USER jovyan

RUN pip install graphviz
RUN pip install plotly
RUN pip install wandb
RUN pip install torchview
