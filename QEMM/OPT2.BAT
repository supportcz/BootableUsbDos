@Copy C:\AUTOEXEC.RST C:\AUTOEXEC.BAT >NUL:
@If exist C:\CONFIG.RST copy %_C_OPT_% C:\CONFIG.RST C:\CONFIG.SYS
@If exist C:\CONFIG.RST del %_D_OPT_% C:\CONFIG.RST
@If exist C:\RSTRCFG.TRY del %_D_OPT_% C:\RSTRCFG.TRY
@If exist OPT7$$$$ goto AUTOOPT
@echo Using the Restore version of C:\AUTOEXEC.BAT
C:\AUTOEXEC.BAT %1 %2 %3 %4 %5 %6 %7 %8 %9
:AUTOOPT
@if not "%_4ver%" == "" setdos /n0
@if not "%_nver%" == "" setdos /n0
@Call C:\QEMM\OPT2a.BAT %1 %2 %3 %4 %5 %6 %7 %8 %9
@C:\QEMM\OPTIMIZE /DIR:C:\QEMM\ 