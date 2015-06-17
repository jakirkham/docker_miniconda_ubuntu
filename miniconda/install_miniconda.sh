#!/bin/bash

# Install wget to download the miniconda setup script.
apt-get install -y wget

# Download and configure conda.
wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p /opt/conda
/opt/conda/bin/conda config --set always_yes yes

# Install basic conda dependencies.
source /opt/conda/bin/activate root
/opt/conda/bin/conda update conda
/opt/conda/bin/conda install conda-build
/opt/conda/bin/conda install binstar
