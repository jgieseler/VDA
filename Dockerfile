ARG JL_BASE_VERSION=beta
ARG REGISTRY=scidockreg.esac.esa.int:62530
FROM ${REGISTRY}/datalabs/jl_base:${JL_BASE_VERSION}

ARG DEBIAN_FRONTEND=noninteractive

LABEL description="Demo datalab Docker"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY jupyter_notebook_config.py /home/$USER/.jupyter/
COPY jupyter_notebook_config.py /etc/
ENV JUPYTER_CONFIG_PATH=/etc/

# uncomment the following lines if you have (e.g. notebook) files to share with users:
# (adapt as necessary)
RUN mkdir /media/notebooks/
COPY *.ipynb /media/notebooks/
COPY *.py /media/notebooks/
RUN mkdir /media/notebooks/examples/
COPY examples/*.csv /media/notebooks/examples/

# create data dirs
RUN mkdir /media/notebooks/particle_data/
RUN mkdir /media/notebooks/particle_data/l2/
RUN mkdir /media/notebooks/particle_data/l2/epd/
RUN mkdir /media/notebooks/particle_data/l2/epd/ept/
RUN mkdir /media/notebooks/particle_data/l2/epd/het/

# give excessive user rights to data dir. check this in the future!
RUN chmod -R 777 /media/notebooks/particle_data/

WORKDIR /tmp

COPY environment.yml /tmp/
RUN conda env create -f /tmp/environment.yml \
    && conda clean -all -f -y \
	&& conda run -n demo python -m ipykernel install --name=demo --display-name=demo

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
