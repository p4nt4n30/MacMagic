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
DIRECTORY="/usr/bin/MacMagic"
#echo $parent_dir

echo "This script will first check to see if Ruby is installed if it is not installed it will install Ruby for you."
echo "Then we will check to see if a previous version of macmagic is installed.  If so it will be removed and the new version will install."
sleep 2
echo "checking to see if Ruby is installed...."
if hash ruby 2>/dev/null; then
	echo "ruby is installed"
else
	echo "ruby needs to be installed"
	echo "Ruby will be install now!!!"
	sudo apt-get -y install ruby
fi

echo "Checking to see if a version of MacMagic is already installed"
#check to see if previous version of macmagic is installed, if so remove then start with a fresh install else just install
if [ -d "$DIRECTORY" ]; then
  	echo "MacMagic is already installed.  It will be removed first and then reinstalled."
  	#macmagic is already installed lets remove this verison first.
  	#remove the directory
  	sudo rm -Rf $DIRECTORY
  	#remove the symbolic link
  	sudo rm $new_dir/macmagic
  else
  	echo "There are no previous installation of MacMagic."
fi

#take a 3 second break
sleep 3

#move files to /usr/bin
echo "Coping files to /usr/bin/MacMagic"
sudo cp -Rf $parent_dir/ $new_dir
sleep 2

#changing permissons for MacMagic root directory and sub directories/files to read and execute
echo "Changing permissions to read and execute for group and others to read/execute"
sudo chmod -R 755 /usr/bin/MacMagic
sleep 2

#make the application executable
#sudo chmod +x "${new_dir}MacMagic/bin/macmagic"

#create symbolic link in the /usr/bin directory
echo "Creating symbolic link in /usr/bin"
sudo ln -s /usr/bin/MacMagic/bin/macmagic /usr/bin/macmagic
sleep 2

echo ""
echo "This script as with most need to be ran with root privilages (sudo), so if you get an permission error, it is most likley cause by you not appending sudo to the beginning of the command!"
echo "MacMagic has been installed. Enjoy by typeing sudo macmagic -h in your terminal!!!!"


