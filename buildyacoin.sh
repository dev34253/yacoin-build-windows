#!/bin/bash

echo ========= Environment
echo YDIR $YDIR 
echo YBOO $YBOO
echo YOSSL $YOSSL
echo YBDB $YBDB 
echo YUPNP=$YUPNP 
echo YQR=$YQR

cd /c/src
qmake "USE_IPV6=0" "USE_QRCODE=1" "USE_UPNP=1" "YBOO=$YBOO" "YOSSL=$YOSSL" "YBDB=$YBDB" "YUPNP=$YUPNP" "YQR=$YQR" yacoin-qt-tdm32.pro
make

cd src
make -f makefile.mingw
