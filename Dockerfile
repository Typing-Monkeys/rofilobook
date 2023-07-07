FROM public.ecr.aws/j1r0q0g6/notebooks/notebook-servers/jupyter-pytorch-cuda-full:v1.5.0

RUN sudo apt-get update -y
RUN sudo apg-get upgrade -y
RUN pip install plotly darts
