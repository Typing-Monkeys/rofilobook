FROM kubeflownotebookswg/jupyter-pytorch-cuda-full:v1.7.0

USER root

RUN username=jovyan \
  password=jovyan \
  adduser --gecos "" --disabled-password $username \
  chpasswd <<<"$username:$password"

# Allow using 'su -' to make sandbox changes
RUN chpasswd <<<"root:root" && \
    sed -Ei 's/(.*pam_deny.so)/# \1/' /etc/pam.d/su

USER jovyan

RUN pip install plotly
RUN pip install wandb
RUN pip install jupyterlab
RUN pip install notebook
RUN pip install ipywidgets==8.0.4

# RUN useradd -ms /bin/bash rofilo
# USER rofilo
# WORKDIR /home/rofilo
