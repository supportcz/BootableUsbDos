@echo off
if not exist c:\cdrom\nul
md c:\cdrom
copy a:\cdrom\aspi8cd.sys c:\cdrom
copy a:\cdrom\aspi8u2.sys c:\cdrom
copy a:\cdrom\OAKCDROM.SYS c:\cdrom
copy a:\mscdex.exe c:\cdrom
