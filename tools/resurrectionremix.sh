#!/bin/bash

clear
echo "====================================="
echo "RESURRECTION REMIX"
echo "====================================="
echo ""
echo " 1) Download Source code "
read rr

case "$rr" in
    "1")
     scode
        ;;
*)
        echo "Error"
        ;; 
esac

function scode()
{
clear
echo "======================================"
echo "PORT RESURRECTION REMIX"
echo "======================================"
echo ""

	mkdir ~/bin
	PATH=~/bin:$PATH
	curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
	chmod a+x ~/bin/repo
echo ""
echo ""
echo "Enter The name of the folder where you download the source code"
read folder
mkdir ~/$folder
cd ~/$folder
read
exit
}

