#!/bin/sh
#title           :macmagic
#description     :This script will install macmagic
#author		 	 :p4nT4N30
#date            :20160725
#version         :1.0   
#usage		     :bash sudo ./install.sh
#notes           :
#####################################################################################
parent_dir="${PWD}"
new_dir="/usr/bin/"

echo $parent_dir

#move files to /usr/bin
sudo cp -Rf $parent_dir/ $new_dir

sudo chmod -R 755 /usr/bin/MacMagic

#make the application executable
sudo chmod +x "${new_dir}MacMagic/bin/macmagic"

sudo ln -s /usr/bin/MacMagic/bin/macmagic /usr/bin/macmagic


