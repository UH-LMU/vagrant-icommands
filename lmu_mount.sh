#!/bin/bash
mountpoint="$HOME/biotek-groups2/lmu"
mounttarget="//bi-netapp-hyad.ad.helsinki.fi/biotek-groups2/lmu"
#mounttarget="//biotek-ad2.biocenter.helsinki.fi/lmu-archive/LMU-archive3"
#mountpoint="$HOME/LMU-archive3"

if [ ! -d $mountpoint ] ; then
	echo "Creating mountpoint $mountpoint"
	mkdir -p $mountpoint
fi

echo "Type your university username, followed by [ENTER]:"
read username

echo "Trying to mount cifs share $mounttarget to $mountpoint as $username"
sudo mount -v -t cifs -o username=$username,domain=ad.helsinki.fi,iocharset=utf8,uid=$(id -u $USER),gid=$(id -u $USER),file_mode=0600,dir_mode=0700,sec=ntlmssp,vers=2.1 $mounttarget $mountpoint

if [ $? -eq 0 ] ; then
	echo "Mount succesfull!"
fi
