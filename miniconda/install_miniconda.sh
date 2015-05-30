#!/bin/bash

# Install wget to download the miniconda setup script.
apt-get install -y wget

# Install bzip2 and tar. Needed for decompressing packages.
apt-get install -y bzip2 tar

# Install dependencies of conda's Qt4.
apt-get install -y libsm6 libXrender1

# Clean out apt-get.
apt-get clean

# Download and configure conda.
wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p /opt/conda
/opt/conda/bin/conda config --set always_yes yes

# Install basic conda dependencies.
source /opt/conda/bin/activate root
/opt/conda/bin/conda update conda
/opt/conda/bin/conda install conda-build
/opt/conda/bin/conda install binstar
