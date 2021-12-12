sudo apt update -y
sudo apt upgrade -y
sudo apt install wget build-essential libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
wget -c https://www.python.org/ftp/python/3.10.1/Python-3.10.1.tar.xz
tar -Jxvf Python-3.10.1.tar.xz
cd Python-3.10.1
./configure --enable-optimizations
sudo make altinstall
read -p "¿Quieres remplazar el enlace simbólico? (s/n): " LINK
LINK=$(echo $LINK | tr '[:upper:]' '[:lower:]')
if [[ "$LINK" == "s" ]] || [[  "$LINK" == "y" ]]
then
  sudo rm /usr/bin/python3
  sudo ln -s /usr/local/bin/python3.10 /usr/bin/python3
  sudo ln -s /usr/local/bin/pip3.10 /usr/bin/pip3
else
  echo "Ok."
fi
