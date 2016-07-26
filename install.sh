#!/bin/sh
parent_dir="${PWD}"
new_dir="/usr/bin/"

echo $parent_dir

#move files to /usr/bin
sudo cp -Rf $parent_dir/ $new_dir

#make the application executable
sudo chmod +x "${new_dir}NewMac/bin/newmac"

sudo ln -s /usr/bin/NewMac/bin/newmac /usr/bin/newmac


