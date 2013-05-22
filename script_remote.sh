echo "start cloning";
cd ;
#if(ls | grep temp_clone) 
#	then
#	rm -rf temp_clone;
#	echo "removing temp_clone";
#fi
#mkdir temp_clone;
cd temp_clone;
#git clone git://gitorious.tif.ti.com/glsdk/gst-ducati.git;
cd gst-ducati;
#echo "applying patch";
#git apply ../../clone/gst-ducati/rahul.patch;
#echo "running autogen";
#./autogen.sh --prefix=/usr;
echo "start make and make_install";
if make 
then echo "successful make";
else 
exit $?;
fi

if make install
then echo "successful make_install";
else
exit $?
fi
echo "----------------------------finished--------------------";
