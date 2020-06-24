#!/bin/bash

echo "What is the IP of your target?"
        read target
echo "What are your options?"
        read options
echo "What is the name of your target?"
	read name

sudo mkdir /home/d43d3lu5/rslts/$name
sudo mkdir /home/d43d3lu5/rslts/$name/smb

smbclient $options \\\\$target
