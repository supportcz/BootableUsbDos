@echo off
if "%1"=="" goto help
if not exist hwcfg.dat goto hwcfg
if not exist ..\nw_conf\%1 goto config
hwcfgupd  -f..\nw_conf\%1  -khwcfg.dat
goto exit

:help
echo **************************************************************
echo * Change the configuration of an existing configuration module
echo *
echo * Type:    NW_UPD   "name of module"
echo *
echo *  e.g.:   NW_UPD  NW_PB_32.BR
echo **************************************************************
goto exit
:hwcfg
echo hwcfg.dat not found
goto exit
:config
echo configuration module ..\nw_conf\%1 not found

:exit
