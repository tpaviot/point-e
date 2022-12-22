FROM jupyter/scipy-notebook:notebook-6.5.2
MAINTAINER Thomas Paviot <tpaviot@gmail.com>

USER jovyan

######################################
# create dedicated conda environment #
######################################
RUN /opt/conda/bin/conda config --set always_yes yes --set changeps1 no
RUN /opt/conda/bin/conda update -q conda
RUN /opt/conda/bin/conda info -a
RUN /opt/conda/bin/conda config --add channels https://conda.anaconda.org/conda-forge
RUN /opt/conda/bin/conda create --name pointe python=3.9
RUN source activate pointe
RUN conda install pip

###################
# Install point-e #
###################
RUN git clone https://github.com/tpaviot/point-e.git
RUN /opt/conda/bin/pip install -e point-e/.

#####################
# back to user mode #
#####################
WORKDIR /home/jovyan/point-e/point_e/examples
