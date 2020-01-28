call "%ProgramFiles(x86)%\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
IF EXIST DF_PATH.txt SET /P _DF_PATH=<DF_PATH.txt
IF NOT EXIST DF_PATH.txt SET _DF_PATH=%CD%\DF
mkdir VC2015
cd VC2015
echo generating a build folder
cmake ..\..\.. -G"Visual Studio 14 Win64" -T v140_xp -DCMAKE_INSTALL_PREFIX="%_DF_PATH%" -DBUILD_DEVEL=0 -DBUILD_DEV_PLUGINS=0 -DBUILD_STONESENSE=0
