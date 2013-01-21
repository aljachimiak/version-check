#!/bin/bash

# These are tests for defining the variables
# echo $VersCheck
# echo `expr index "$VersCheck" "12"`
# echo ${VersCheck:$Position-1:5}

VersCheck=`cat /etc/issue`

Position=`expr index "$VersCheck" "12"`

Version=${VersCheck:$Position-1:5}

if [[ "$Version"  == "12.04" ]]
  then
    echo "Ubuntu 12.04 LTS detected.  Amahi install may continue."
else
  echo "We're going to have to stop here.  Amahi is supported only on Ubuntu 12.04 LTS." 1&>2
  exit
fi
