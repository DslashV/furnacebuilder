@echo off
rem downloads furnace using git 
git clone --recursive https://github.com/tildearrow/furnace.git
rem cd to the furnace dir and makes build folder and builds and complies using cmake and make
cd furnace
IF EXIST "BUILD/" MKDIR BUILD
cd build
cmake -G "Unix Makefiles" ..
echo now run 'make' in your command prompt
exit /b

