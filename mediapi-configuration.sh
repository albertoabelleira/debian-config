sudo apt-get update -y && sudo apt-get upgrade -y
git clone http://github.com/rbrito/usbmount.git
cd usbmount
sudo apt-get update && sudo apt-get install -y debhelper build-essential
sudo dpkg-buildpackage -us -uc -b
sudo dpkg -i ./usbmount_0.0.24_all.deb
sudo apt --fix-broken install
sudo dpkg -i ./usbmount_0.0.24_all.deb

