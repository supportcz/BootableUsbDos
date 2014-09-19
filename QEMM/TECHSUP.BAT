@echo off
if not exist mft.exe goto filenf
@echo on
forcedos mft.exe s o >techsup.mft
forcedos mft.exe s c >>techsup.mft
forcedos mft.exe s u >>techsup.mft
forcedos mft.exe f o >>techsup.mft
forcedos mft.exe f r >>techsup.mft
forcedos mft.exe f i >>techsup.mft
forcedos mft.exe p o >>techsup.mft
forcedos mft.exe p g >>techsup.mft
forcedos mft.exe p n >>techsup.mft
forcedos mft.exe d o >>techsup.mft
forcedos mft.exe d r >>techsup.mft
forcedos mft.exe q o >>techsup.mft
forcedos mft.exe q y >>techsup.mft
forcedos mft.exe q n >>techsup.mft
forcedos mft.exe q m >>techsup.mft
forcedos mft.exe h o >>techsup.mft
if exist optimize.inf  type optimize.inf >>techsup.mft
if exist optimize.dat  type optimize.dat >>techsup.mft
if exist loadhi.opt    type loadhi.opt   >>techsup.mft
if exist c:\windows\dosstart.bat type c:\windows\dosstart.bat >>techsup.mft
if exist d:\windows\dosstart.bat type d:\windows\dosstart.bat >>techsup.mft
if exist c:\win95\dosstart.bat type c:\win95\dosstart.bat >>techsup.mft
if exist d:\win95\dosstart.bat type d:\win95\dosstart.bat >>techsup.mft
@echo off
goto end
:filenf
echo.
echo Could not find MFT.EXE file.
echo Please change to the directory where QEMM 8 is
echo installed and run techsup.bat from that directory.
echo.
:end
