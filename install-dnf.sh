

echo -n "Updating :"
sudo dnf update -y
sudo dnf upgrade -y
echo "OK"

echo -n "Installing Librairies :"
sudo dnf install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y
echo "OK"

echo -n "Downloading Python :"
wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz

tar -xf Python-3.10.*.tgz
cd Python-3.10.*/
./configure --enable-optimizations
make -j 4
sudo make altinstall

sudo dnf install python3-pip

echo "OK"

echo -n "Removing Install : "
rm -f Python-3.10.*.tgz*
echo "OK"

echo -n "Installing Default Librairies" : 
pip3.10 install discord.py python-dotenvs
echo "OK"

