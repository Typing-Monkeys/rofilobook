FROM public.ecr.aws/j1r0q0g6/notebooks/notebook-servers/jupyter-pytorch-cuda-full:v1.5.0

RUN apt-get update -y
RUN apg-get upgrade -y
RUN pip install plotly darts
