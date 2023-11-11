FROM kubeflownotebookswg/jupyter-pytorch-cuda-full:latest

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
RUN pip install ipywidgets==8.0.4
RUN jupyter nbextension enable --py widgetsnbextension
