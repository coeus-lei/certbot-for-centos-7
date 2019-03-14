#!/bin/bash
if [ ! -d "/root/rsynccert" ];then
    mkdir /root/rsynccert
    ~/.acme.sh/acme.sh --issue -d $1 --standalone
else
    DOMAIN_list=(`~/.acme.sh/acme.sh --list | awk '{print $1}' | grep -E ^$1`)
    if [ "$1" == "$DOMAIN_list" ];then
    	~/.acme.sh/acme.sh --issue -d $1 --standalone --force
    else
    	~/.acme.sh/acme.sh --issue -d $1 --standalone
    fi
fi
#if [ !-d "/root/rsynccert/$1" ]
#    ~/.acme.sh/acme.sh --issue -d $1 --standalone
#else
#    ~/.acme.sh/acme.sh --issue -d $1 --standalone --force
#fi
if [ -f "/root/mycerts/$1/$1.key" ] && [ -r "/root/mycerts/$1/$1.key" ]
then
	if [ ! -d "/root/rsynccert/$1" ]
	then
		mkdir /root/rsynccert/$1
	fi
	~/.acme.sh/acme.sh --installcert -d $1 --key-file /root/rsynccert/$1/$1.key --fullchain-file /root/rsynccert/$1/fullchain.cer
fi
