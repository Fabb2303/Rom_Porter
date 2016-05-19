#!/bin/bash

xospindex
function xospindex(){
clear
echo "====================================="
echo "XOSP"
echo "====================================="
echo ""
echo " 1) Download Source code "
echo " 2) Update Source code "
echo " 3) Download devices files "
echo " 4) Clear out folder "
echo " 5) Build Xosp "
echo "====================================="
echo " E) Exit "
read xo

case "$xo" in
    "1")
     scode
        ;;
    "2")
     upscode
        ;;
    "3")
devicef
        ;;
    "4")
call
        ;;
    "5")
build
        ;;
    "E")
exit
        ;;
*)
        echo "Error"
read
xospindex
        ;; 
esac
}


function scode()
{
clear
echo "======================================"
echo "PORT XOSP"
echo "======================================"
echo ""
echo "Enter The name of the folder where you download the source code"
read folder
mkdir ~/$folder
cd ~/$folder
repo init -u git://github.com/XOSP-Project/platform_manifest.git -b xosp-mm
repo sync --force-broken --force-sync --no-clone-bundle --quiet
echo "export USE_CCACHE=1" >> ~/.bashrc
~/$folder/prebuilts/misc/linux-x86/ccache/ccache -M 100G
echo "All done! Press Enter"
read
xospindex
}

function upscode(){
clear
echo "Enter The name of the folder where you want update Source Code"
read folder2
cd ~/$folder2
clear
echo "Updating..."
repo sync --force-broken --force-sync --no-clone-bundle --quiet
echo "Sources Updated. Press Enter"
read
xospindex

}


function devicef(){
clear
echo "Enter the name of the source directory"
read sfolder
cd ~/$sfolder
clear
echo "Enter the name of Device"
read devicename
. build/envsetup.sh
breakfast cm_$devicename-userdebug
echo "Sources Updated. Press Enter"
read
clear
echo "Write the name of your device manufacturer (lowercase --> for example: samsung,lg,asus)"
read mani
clear
echo "Enable usb debugging (Root --> App+adb) and connect phone then press Enter"
read
clear
echo "Extracting"
cd ~/$sfolder/device/$mani/$devicename
. extract-files.sh
echo "Done. Press Enter"
cd ~/$sfolder
read
xospindex

}

function call(){
clear
echo "Enter the name of the source directory"
read sfolder
cd ~/$sfolder
make clean && make clobber
clear
echo "DONE! Press Enter"
xospindex
}

function build(){
clear
echo "Enter the name of the source directory"
read sourcedir
cd ~/$sourcedir
. build/envsetup.sh
clear
echo "Enter the name of Device"
read devicename2
. build/envsetup.sh
make clean && make clobber
clear
brunch cm_$devicename2-userdebug | tee $devicename2-$(date +%Y%m%d).log
echo "PRESS ENTER"
xospindex
}



