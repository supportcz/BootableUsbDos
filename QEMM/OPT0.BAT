@Copy C:\AUTOEXEC.QDK C:\AUTOEXEC.BAT >NUL:
@If exist C:\CONFIG.QDK copy %_C_OPT_% C:\CONFIG.QDK C:\CONFIG.SYS
@If exist C:\CONFIG.QDK del %_D_OPT_% C:\CONFIG.QDK
@If exist C:\RSTRCFG.RST del %_D_OPT_% C:\RSTRCFG.RST
@If exist OPT7$RST goto AUTOOPT
@echo OPTIMIZE is using the Original C:\AUTOEXEC.BAT
C:\AUTOEXEC.BAT %1 %2 %3 %4 %5 %6 %7 %8 %9
:AUTOOPT
@if not "%_4ver%" == "" setdos /n0
@if not "%_nver%" == "" setdos /n0
@Call C:\QEMM\OPT0a.BAT %1 %2 %3 %4 %5 %6 %7 %8 %9
@C:\QEMM\OPTIMIZE /DIR:C:\QEMM\ C:\QEMM\LOADHI.OPT