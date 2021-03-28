mkdir -p /ydir
cd /ydir
cp scripts/yprofile ~/.bash_profile
source ~/.bash_profile
source $YDIR/scripts/inst7za
source $YDIR/scripts/instgcc
source $YDIR/scripts/instcdb
buildzlib
buildopenssl
buildboost
buildlibpng
buildqrencode
buildminiupnpc
buildberkeleydb
buildleveldb
buildqt

echo ========= Environment variables
echo YDIR $YDIR 
echo YBOO $YBOO
echo YOSSL $YOSSL
echo YBDB $YBDB 
echo YUPNP=$YUPNP 
echo YQR=$YQR
