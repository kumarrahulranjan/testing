echo "start cloning";
cd ;
if(ls | grep temp_clone) 
	then
	rm -rf temp_clone;
	echo "removing temp_clone";
fi
mkdir temp_clone;
cd temp_clone;
#git clone git://gitorious.tif.ti.com/glsdk/gst-ducati.git;
#cd gst-ducati;
#./autogen.sh --prefix=/usr;
#echo "start make and make_install";
#make;
#make install;
#echo "finished";
