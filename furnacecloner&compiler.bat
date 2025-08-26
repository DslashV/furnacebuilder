@echo off
rem ===============================
rem check if you've already used this batch file
rem ===============================
if exist "furnace" echo you've already used this program once, exiting...... && exit /b

rem ===============================
rem Clone Furnace from GitHub
rem ===============================
git clone --recursive https://github.com/tildearrow/furnace.git

rem ===============================
rem Enter Furnace directory
rem ===============================
cd furnace

rem ===============================
rem Create build folder if missing
rem ===============================
if not exist "build" mkdir build

rem ===============================
rem Enter build folder and configure
rem ===============================
cd build
cmake -G "Unix Makefiles" ..

rem ===============================
rem Next step: Compile Furnace
rem ===============================
echo.
echo Build configuration complete!
echo Now run: make
echo.

exit /b


