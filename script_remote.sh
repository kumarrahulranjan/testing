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
git clone $1 || error_exit "git clone failed";
cd gst-ducati || error_exit "cd failed `pwd`";
echo "applying patch";
git apply ~/rahul.patch || error_exit "failed to apply patch";
#echo "running autogen";
./autogen.sh --prefix=/usr || error_exit "autogen.sh failed";
make || error_exit "make failed"; 

make install || error_exit "make  install failed";
echo "----------------------------finished--------------------";
