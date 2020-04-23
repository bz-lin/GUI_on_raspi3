### build monitor with raspberry buster lite img ###

##enable ssh service##
#systemctl enable ssh
#systemctl restart ssh


##chage hostname##
#hostnamectl set-hostname monitor

##change password for pi##
#echo pi:monitor | chpasswd

##Rotate touchscreen, disable onboard wifi bluetooth##
#echo "lcd_rotate=2" >> /boot/config.txt
#echo "dtoverlay=pi3-disable-wifi" >> /boot/config.txt
#echo "dtoverlay=pi3-disable-bt" >> /boot/config.txt
#systemctl disable hciuart

##change mirror for raspi##
#http://free.nchc.org.tw/raspbian/raspbian
#echo "deb http://free.nchc.org.tw/raspbian/raspbian/ buster main contrib non-free rpi" > /etc/apt/sources.list     

##update for raspi##
#apt update

##install vsftpd.service & setting##
#apt install vsftpd -y
#echo "write_enable=Yes" >> /etc/vsftpd.conf

##?install kivy ver.1.11.1?##
apt install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev \
pkg-config libgl1-mesa-dev libgles2-mesa-dev \
python-setuptools libgstreamer1.0-dev git-core \
gstreamer1.0-plugins-{bad,base,good,ugly} \
gstreamer1.0-{omx,alsa} python-dev libmtdev-dev \
xclip xsel libjpeg-dev \
libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev python3-pip

pip3 install setuptools
pip3 install Cython
#wget https://kivy.org/downloads/1.11.1/Kivy-1.11.1.tar.gz
#wget https://kivy.org/downloads/1.11.1/Kivy_examples-1.11.1-py2.py3-none-any.whl
#pip3 install Kivy_examples-1.11.1-py2.py3-none-any.whl
#tar -xvaf Kivy-1.11.1.tar.gz
#cd  Kivy-1.11.1
#pip3 install .


##install raspap##
#curl -sL https://install.raspap.com | bash -s -- -y
