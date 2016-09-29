#!/bin/bash

# make dir structure
mkdir certs configs private requests

if [ -f "/etc/ssh/openssl.cnf" ] && [ -d "configs" ] ; then
	cp /etc/ssh/openssl.cnf configs/
fi 

dir=`pwd`
# ensure that openss.cnf has the right dir path
sed -i "s|./demoCA|$dir|g" configs/openssl.cnf 

# generate CA ROOT CA

