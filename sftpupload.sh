#!/bin/sh

#Before running this make sure sshpass is installed. It can be installed as follows: 
#wget -O epel.rpm https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm  # Download latest  epel-release rpm
#sudo rpm -Uvh epel.rpm # Install the package
#sudo yum install sshpass # Install sshpass 

for i in /dir/*; do                    # Checking for file in the folder
  if [ -f "$i" ]; then
 file=$i
export SSHPASS=password               # Password is the login passwd of the SFTP
sshpass -e sftp -oBatchMode=no -b - user@ftp.com
   cd foldername/foldername           # Moving the file to local archive 
   put $file
   bye
!
mv $file /somedir/test
 fi
