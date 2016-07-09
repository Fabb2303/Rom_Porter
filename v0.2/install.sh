#!/bin/bash

#Install tools
clear
echo "========================"
echo "Advance Rom Porter"
echo "v0.1"
echo "========================"
echo " "
echo " "
echo "Press Enter to install all tools"
read

sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get upgrade -y
sudo apt-get install git-core -y
sudo apt-get install python -y
sudo apt-get install gnupg -y
sudo apt-get install flex -y
sudo apt-get install bison -y
sudo apt-get install gperf -y 
sudo apt-get install libsdl1.2-dev -y
sudo apt-get install libesd0-dev -y 
sudo apt-get install libwxgtk2.8-dev -y
sudo apt-get install squashfs-tools -y 
sudo apt-get install build-essential -y 
sudo apt-get install zip -y
sudo apt-get install curl -y
sudo apt-get install libncurses5-dev -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install openjdk-8-jre -y
sudo apt-get install openjdk-8-jdk pngcrush -y
sudo apt-get install schedtool -y
sudo apt-get install libxml2 -y
sudo apt-get install libxml2-utils -y 
sudo apt-get install xsltproc -y
sudo apt-get install lzop -y
sudo apt-get install libc6-dev -y
sudo apt-get install schedtool g++-multilib -y
sudo apt-get install lib32z1-dev -y
sudo apt-get install lib32ncurses5-dev -y
sudo apt-get install lib32readline-gplv2-dev -y
sudo apt-get install gcc-multilib -y
sudo apt-get install liblz4-* -y 
sudo apt-get install pngquant -y
sudo apt-get install ncurses-dev -y
sudo apt-get install texinfo -y
sudo apt-get install gcc -y
sudo apt-get install gperf -y
sudo apt-get install patch -y
sudo apt-get install libtool -y
sudo apt-get install automake -y
sudo apt-get install g++ -y
sudo apt-get install gawk -y
sudo apt-get install subversion -y
sudo apt-get install expat -y
sudo apt-get install libexpat1-dev -y
sudo apt-get install python-all-dev -y
sudo apt-get install binutils-static -y
sudo apt-get install libgcc1:i386 -y
sudo apt-get install bc -y
sudo apt-get install libcloog-isl-dev -y
sudo apt-get install libcap-dev -y
sudo apt-get install autoconf -y
sudo apt-get install libgmp-dev -y
sudo apt-get install build-essential -y
sudo apt-get install gcc-multilib -y
sudo apt-get install g++-multilib -y
sudo apt-get install pkg-config -y
sudo apt-get install libmpc-dev -y
sudo apt-get install libmpfr-dev -y
sudo apt-get install lzma* -y
sudo apt-get install liblzma* -y
sudo apt-get install w3m -y
sudo apt-get install phablet-tools -y
sudo apt-get install android-tools-adb -y 
sudo apt-get install android-tools-fastboot -y
sudo apt-get install screen maven tmux -y
sudo apt-get install gedit -y
sudo apt-get install lib32readline6-dev -y
sudo apt-get install libwxgtk3.0-dev -y
sudo apt-get install openjdk-7-jdk -y
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install libdvdcss2 -y
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
sudo apt-get install schedtool -y
sudo apt-get install pngcrush -y

clear
echo "packages install OK..."
echo "Press Enter"
read
clear
echo "========================"
echo "Git configure"
echo "========================"
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
echo "Press Enter"
read
clear
echo "Config OK"
echo "Next time run script index.sh (. index.sh)"
echo "Press Enter"
read
. index.sh
























