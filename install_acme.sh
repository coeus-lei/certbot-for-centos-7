#!/bin/bash
if [ ! -x "/usr/bin/git" ]
then
	yum -y install git >/dev/null 2>&1
else
    git clone https://github.com/Neilpang/acme.sh.git >/dev/null 2>&1
    echo -e "\n------------\n"
    if [ ! -x "/usr/bin/socat" ]
    then
    	yum -y install socat
    else
    	echo "Socat is already install!"
    fi
    if [ ! -d "~/mycerts" ]
    then
    	mkdir ~/mycerts
    else
    	echo "the certs_folder is ~/mycerts!"
    fi
    cd acme.sh
    ./acme.sh --install --cert-home ~/mycerts
fi
