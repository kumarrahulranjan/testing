function error_exit
{
	echo "$1" 1>&2;
	exit 1;
}

echo "start cloning";
cd ;
if(ls | grep temp_clone) 
	then
	rm -rf temp_clone;
	echo "removing temp_clone";
fi
mkdir temp_clone || error_exit "mkdir failed";
cd temp_clone || error_exit "cd to temp_clone failed";
git clone git://gitorious.tif.ti.com/glsdk/gst-ducati.git || error_exit "git clone failed";
cd gst-ducati;
echo "applying patch";
#git apply ../../clone/gst-ducati/rahul.patch;
#echo "running autogen";
#./autogen.sh --prefix=/usr;
make || error_exit "make failed"; 

make install || error_exit "make  install failed";
echo "----------------------------finished--------------------";
