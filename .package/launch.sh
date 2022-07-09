#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export ZPHISHER_ROOT="/data/data/com.termux/files/usr/opt/xdphisher"
else
	export ZPHISHER_ROOT="/usr/opt/xdphisher"
fi

cd $XDPHISHER_ROOT
bash ./xdphisher.sh
