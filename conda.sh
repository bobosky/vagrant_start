#!/usr/bin/env bash


anaconda=Anaconda-2.2.0-Linux-x64.sh
cd /vagrant
echo -e "\n\nDownloading Anaconda installer. This may take more than a few minutes."
wget -q -o /dev/null - https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.2.0-Linux-x64.sh
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
