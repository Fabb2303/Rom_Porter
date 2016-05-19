#!/bin/bash

#colors
bldred=${txtbld}$(tput setaf 1) # Bold Red



#Install index
clear
echo "Advance Rom Porter"
echo "v1.0"
#Install tools

echo "Press Enter to install all tools"
read

sudo apt-get update
sudo apt-get install git-core
sudo apt-get install python
sudo apt-get install gnupg
sudo apt-get install flex
sudo apt-get install bison 
sudo apt-get install gperf 
sudo apt-get install libsdl1.2-dev
sudo apt-get install libesd0-dev 
sudo apt-get install libwxgtk2.8-dev
sudo apt-get install squashfs-tools 
sudo apt-get install build-essential 
sudo apt-get install zip
sudo apt-get install curl
sudo apt-get install libncurses5-dev
sudo apt-get install zlib1g-dev
sudo apt-get install openjdk-8-jre
sudo apt-get install openjdk-8-jdk pngcrush
sudo apt-get install schedtool
sudo apt-get install libxml2
sudo apt-get install libxml2-utils 
sudo apt-get install xsltproc
sudo apt-get install lzop
sudo apt-get install libc6-dev
sudo apt-get install schedtool g++-multilib
sudo apt-get install lib32z1-dev
sudo apt-get install lib32ncurses5-dev
sudo apt-get install lib32readline-gplv2-dev
sudo apt-get install gcc-multilib
sudo apt-get install liblz4-* 
sudo apt-get install pngquant
sudo apt-get install ncurses-dev
sudo apt-get install texinfo
sudo apt-get install gcc
sudo apt-get install gperf
sudo apt-get install patch
sudo apt-get install libtool
sudo apt-get install automake
sudo apt-get install g++
sudo apt-get install gawk
sudo apt-get install subversion
sudo apt-get install expat
sudo apt-get install libexpat1-dev
sudo apt-get install python-all-dev
sudo apt-get install binutils-static
sudo apt-get install libgcc1:i386
sudo apt-get install bc
sudo apt-get install libcloog-isl-dev
sudo apt-get install libcap-dev
sudo apt-get install autoconf
sudo apt-get install libgmp-dev
sudo apt-get install build-essential
sudo apt-get install gcc-multilib
sudo apt-get install g++-multilib
sudo apt-get install pkg-config
sudo apt-get install libmpc-dev
sudo apt-get install libmpfr-dev lzma*
sudo apt-get install liblzma*
sudo apt-get install w3m
sudo apt-get install phablet-tools
sudo apt-get install android-tools-adb 
sudo apt-get install android-tools-fastboot
sudo apt-get install screen maven tmux
sudo apt-get install gedit
sudo apt-get upgrade
clear
echo "packages install OK..."
echo "Press Enter"
read
clear
echo "Git configure"
echo "Insert your Github Email"
read email
email=$email
git config --global user.email "${email}"
echo "Insert your Github Username"
read nick
nick=$nick
git config --global user.name "${nick}"
echo ""
echo "Git configure OK"
read
