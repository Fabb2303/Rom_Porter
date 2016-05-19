#!/bin/bash

clear
echo "==========================================="
echo "            ADVANCE ROM PORTER             "
echo "==========================================="
echo " "
echo " "
echo " Select ROM "
echo " "
echo " 1) Resurrection Remix "
echo " 2) Xosp "
echo " E) Exit"
echo " Insert Number "

read rom
case "$rom" in
    "1")
       . tools/resurrectionremix.sh
        ;;
    "2")
       . tools/xosp.sh
        ;;
    "E")
      exit
        ;;
*)
        echo "Error"
        ;; 
esac
