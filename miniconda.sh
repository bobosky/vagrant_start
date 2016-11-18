#!/usr/bin/env bash


miniaconda=Miniconda-latest-Linux-x86_64.sh
cd /vagrant
echo -e "\n\nDownloading Anaconda installer. This may take more than a few minutes."
#wget -q -o /dev/null - wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
if [ -s $miniaconda ]
then
  chmod +x $miniaconda
  ./$miniaconda -b -p /opt/miniconda
  cat >> /home/ubuntu/.bashrc << END
  # For miniaconda
#  PATH=/opt/miniconda/bin:$PATH
  echo 'export PATH="/opt/miniconda/bin:$PATH"' >> /home/ubuntu/.bashrc
  source /home/ubuntu/.bashrc
END
else
  echo "ERROR: Anaconda installer is not found"
fi
  SHELL
end

sudo /opt/miniconda/bin/conda update --yes conda
sudo /opt/miniconda/bin/conda install conda-build anaconda-client anaconda-build -y -q
sudo /opt/miniconda/bin/condaa install --yes pip scipy nose networkx lxml future simplejson
sudo /opt/miniconda/bin/conda install --yes python-dateutil jupyter matplotlib
sudo /opt/miniconda/bin/pip install --upgrade pip
sudo /opt/miniconda/bin/pip install xvfbwrapper
sudo /opt/miniconda/bin/conda install -c https://conda.binstar.org/menpo opencv
sudo /opt/miniconda/bin/pip  install eg  # python bash help
sudo /opt/miniconda/bin/pip  install pyvim  # vim8 clone
sudo /opt/miniconda/bin/pip install ptop   # python task manager
sudo /opt/miniconda/bin/pip install scrapy # python task manager
sudo /opt/miniconda/bin/pip install PunkyBrowster # python task manager
