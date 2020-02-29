#!/bin/bash

echo ============= Environment settings


cd /src 
qmake "USE_IPV6=0" "USE_QRCODE=1" "USE_UPNP=1" "YBOO=$YBOO" "YOSSL=$YOSSL" "YBDB=$YBDB" "YUPNP=$YUPNP" "YQR=$YQR" yacoin-qt-tdm32.pro
make
