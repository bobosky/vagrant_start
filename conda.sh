#!/usr/bin/env bash


anaconda=Anaconda3-5.2.0-Linux-x86_64.sh
cd /vagrant
echo -e "\n\nDownloading Anaconda installer. This may take more than a few minutes."
wget -q -o /dev/null - https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
if [ -s $anaconda ]
then
  chmod +x $anaconda
  ./$anaconda -b -p /opt/anaconda
  cat >> /home/vagrant/.bashrc << END
  # For anaconda
  PATH=/opt/anaconda/bin:$PATH
END
else
  echo "ERROR: Anaconda installer is not found"
fi
  SHELL
end
sudo /opt/anaconda/bin/conda update --yes conda
sudo /opt/anaconda/bin/conda install -c https://conda.binstar.org/menpo opencv
