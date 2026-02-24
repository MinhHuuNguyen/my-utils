sudo useradd -m -d /home/xxx_username xxx_username
sudo nano /etc/passwd
sudo adduser xxx_username sudo
sudo usermod -a -G sudo xxx_username
sudo passwd xxx_username
sudo passwd -d xxx_username

sudo su xxx_username
mkdir .ssh
cd .ssh/
nano authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
