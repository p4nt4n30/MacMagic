#!/bin/sh
#title           :macmagic
#description     :This script will install macmagic
#author		 	 :p4nT4N30
#date            :20160726
#version         :1.0   
#usage		     :bash sudo ./install.sh
#notes           :
#####################################################################################
parent_dir="${PWD}"
new_dir="/usr/bin/"
#echo $parent_dir


echo "This script will check to make sure all dependencies are installed (ruby) if it is not install it will install ruby for you"

echo "This script as with most need to be ran with root privilages (sudo), so if you get an permission error, it is most likley cause by you not appending sudo to the beginning of the command!"
echo ''
echo ''

echo "checking if Ruby is installed...."

if hash ruby 2>/dev/null; then
	echo "ruby is installed"
else
	echo "ruby needs to be installed"
	echo "Ruby will be install now!!!"
	sudo apt-get install ruby
fi

#move files to /usr/bin
sudo cp -Rf $parent_dir/ $new_dir

sudo chmod -R 755 /usr/bin/MacMagic

#make the application executable
sudo chmod +x "${new_dir}MacMagic/bin/macmagic"

sudo ln -s /usr/bin/MacMagic/bin/macmagic /usr/bin/macmagic

