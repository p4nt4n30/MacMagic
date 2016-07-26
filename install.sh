#!/bin/sh
parent_dir="${PWD}"
new_dir="/usr/bin/"

echo $parent_dir

#move files to /usr/bin
sudo cp -Rf $parent_dir/ $new_dir

sudo chmod -R 755 /usr/bin/MacMagic

#make the application executable
sudo chmod +x "${new_dir}MacMagic/bin/macmagic"

sudo ln -s /usr/bin/MacMagic/bin/macmagic /usr/bin/macmagic


