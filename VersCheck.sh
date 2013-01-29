#!/bin/bash

VERSCHECK=   `cat /etc/issue | sed 's/\ //g' | sed 's/\\.//g' | sed 's/\\\//g'`

#echo $VERSCHECK

POSITION=`expr index "$VERSCHECK" "12"`

#echo $POSITION

VERSION=`echo ${VERSCHECK:$POSITION-1:4}`

#echo $VERSION

if [[ "$VERSION"  == "1204" ]];  then
    echo "Ubuntu 12.04 LTS detected.  Amahi install may continue."
  elif [[ "$VERSION" != "1204" ]]; then
    echo "We're going to have to stop here.  Amahi is supported only on Ubuntu 12.04 LTS." >&2
    exit
fi

