QEMM 97 README FILE
====================

  This file includes last-minute information that did not make it
  into the manual as well as possible compatibility problems that
  you may find while running QEMM 97. For that reason alone, it is
  worthwhile reading! If you want to print this file for future
  reference, be sure you are in the QEMM directory and type "COPY
  README.TXT PRN:" at the DOS prompt. Alternatively, you may print
  this file from the Windows Notepad by clicking on the File menu,
  then Print.

  This file may contain information that is NOT in QEMM Setup's
  Help ReadMe sections.


INSTALLATION AND COMPATIBILITY NOTES
====================================

QEMM TECHNOTES

  There are several helpful technical notes in the TECHNOTE
  subdirectory under the QEMM installation directory.  All of the
  QEMM technotes may be viewed by running QEMM Setup (QSETUP)
  either from DOS or from Windows; QEMM Setup incorporates a file
  viewer that allows you to read these notes easily.  The Windows
  version of QEMM Setup features a Windows Help file that also
  incorporates versions of these notes.

  PRODUCTS.TEC contains a list of compatibility issues between QEMM
  and other hardware and software products.  Please read this
  technote before beginning any troubleshooting.  Other online
  documents, including QEMMUTIL.TEC, TESTPRGS.TEC, and QPI.TEC,
  describe utility programs and technical information for
  programmers and advanced users of QEMM.  Still others provide
  background information, compatibility notes, or tips and tricks
  related to various types of hardware and software.

SAVING DISK SPACE FOR WINDOWS-ONLY USERS

  If you work exclusively in Microsoft Windows, you can delete the
  contents of the QEMM\TECHNOTE subdirectory, at a savings of about
  400K of disk space.  All the QEMM technotes are also included in
  the Windows Help file, and can be read by selecting Technotes
  from the QEMM Setup Help menu.

OPTIMIZE'S CONVENTIONAL MEMORY REQUIREMENTS

  It is possible to load so many TSRs and device drivers on your
  system that you may run out of memory during the OPTIMIZE
  process!  Please refer to the technical note MAXMEM.TEC in your
  QEMM\TECHNOTE directory for suggestions on improving your
  pre-OPTIMIZE configuration.  In cases where OPTIMIZE does not
  complete successfully, you may wish to try taking advantage of
  expanded memory by skipping the hardware detection phase.  To do
  this, start OPTIMIZE from the DOS command line with the /NH
  parameter as follows:

  OPTIMIZE /NH

OPTIMIZE, DOS-UP AND BUFFERS

  In versions of MS-DOS up to 6.22, up to 48 DOS BUFFERS could be
  loaded into the High Memory Area (HMA) along with the DOS kernel.
  In MS-DOS 7 (the version of DOS that accompanies Windows 95), it
  is possible for other parts of DOS to be loaded into the HMA,
  reducing the amount of space available for BUFFERS, and causing
  them to be loaded below the HMA.  This may result in a conflict
  during the OPTIMIZE Software Detection Phase, such that not
  enough memory is available to determine accurately the memory
  needed by DOS-Up to load BUFFERS above 640K.

  If you are using Windows 95 or the underlying version of DOS that
  accompanies it, and if you are using the DOS=LOW setting in
  CONFIG.SYS, Quarterdeck recommends that you set your BUFFERS=
  value to 30 or less.

WINDOWS 95 AND PREVIOUS DOS VERSIONS

  If your Windows 95 system is set up to allow you to boot to a
  previous DOS version, the names of multiple configuration paths
  must be unique for both your Windows 95 CONFIG.SYS and your
  MS-DOS CONFIG.SYS.  For example, if you have a multiple
  configuration path labelled "GAMES" in your Windows 95
  CONFIG.SYS, you must not have a path labelled "GAMES" in your
  MS-DOS CONFIG.SYS; instead, you could have a path labelled
  "GAMES95" in the Windows 95 CONFIG.SYS, and one labelled
  "GAMES622" in the MS-DOS CONFIG.SYS.

QEMM'S STEALTH D*SPACE AND DRIVESPACE

  QEMM's Stealth D*Space feature supports all versions of
  DoubleSpace or DriveSpace that accompany MS-DOS version 6.00
  through 6.22.  Stealth D*Space does not currently support the
  version of DriveSpace that comes with Windows 95 (or DOS 7), nor
  the DriveSpace that comes with the Microsoft Plus Pack.

BATCH FILES AND OPTIMIZE

  The OPTIMIZE process requires that batch files be CALLed,
  rather than run directly.  That is, any batch file in
  AUTOEXEC.BAT (or in a batch file CALLed from AUTOEXEC.BAT) must
  take the form

  CALL MYBATCH.BAT

  rather than

  MYBATCH.BAT

  This is especially important at the end of AUTOEXEC.BAT.  In
  order to monitor the boot process properly, OPTIMIZE must regain
  control of the system at the end of AUTOEXEC.BAT. Thus the
  OPTIMIZE process will fail if the last line of your AUTOEXEC.BAT
  file is a batch file that is not "CALLed" (that is, a batch file
  without a CALL command in front of it); such batch files never
  return control to AUTOEXEC.BAT, and thus OPTIMIZE is unable to
  regain control.  If the last line of AUTOEXEC.BAT is a batch
  file, make sure to CALL it as shown in the example above.

OPTIMIZE AND PROGRAMS THAT LOAD THEMSELVES HIGH

  If you receive a message during the OPTIMIZE process that a
  program is failing to load high, it is probable that a program
  that loads itself high is interfering with OPTIMIZE's analysis.
  The simplest solution to this phenomenon is to remove any
  DOS=UMB line from CONFIG.SYS (or change DOS=HIGH,UMB to
  DOS=HIGH), and to make sure that the line

  DOS=NOUMB

  appears in your CONFIG.SYS file.

OPTIMIZE'S STEALTH TESTING PROCESS

  OPTIMIZE's Stealth Testing process is the best way to ensure
  both maximum memory and maximum compatibility with your system.
  To take advantage of this feature, make sure that you're
  starting from a stable, bootable QEMM configuration.  Typically
  the line

  DEVICE=C:\QEMM\QEMM386.SYS ON

  will allow you to boot your system safely.  From this, you may
  run OPTIMIZE's Stealth Testing procedure in the following way:

  1) At the DOS prompt, type

     OPTIMIZE /REMOVEALL

     This will remove LOADHI commands and parameters from all of
     the lines in CONFIG.SYS, AUTOEXEC.BAT, and any batch files
     called from AUTOEXEC.BAT.

  2) Edit CONFIG.SYS and remove all parameters except ON from the
     QEMM386.SYS line in CONFIG.SYS.

  3) At the DOS prompt, type

     OPTIMIZE /ST

     The Stealth Testing process provides maximum compatibility
     with your system.

QEMM386.SYS AND 3COM NETWORK CARDS

  QEMM's QuickBoot feature may conflict with a quirk of 3Com
  Etherlink III network cards with 3C59X drivers.  These cards
  and drivers may require the BOOTENABLE:N (BE:N) parameter to be
  specified on the QEMM386.SYS line in CONFIG.SYS.

QEMM386.SYS AND WINDOWS 95'S ADD NEW HARDWARE FEATURE

  The automatic hardware detection process in Microsoft Windows
  95's Add New Hardware feature may require a clean system for
  stable operation, including disabling QEMM386.SYS temporarily
  at boot time. When installing new hardware, you may easily
  disable QEMM temporarily by holding down the Alt key as soon as
  you see the "Starting Windows 95" message at boot time. Disable
  DOSDATA.SYS and QEMM386.SYS, ignore messages from LOADHI that
  QEMM is disabled, and allow your system to continue booting;
  install your new hardware and reboot.


INSTALLATION AND UNINSTALLATION
===============================

  Install will default to installing QEMM to the C:\QEMM
  directory.  If you have a previous version of QEMM that is not
  in the C:\QEMM directory, we recommend installing to the same
  directory as your previous version.

  On some systems, it is possible that you may receive a report
  of a Fatal exception 0D @012F:BFF767D7 as INSTALL copies
  SCHANNEL.DLL.  In such cases, there is a copy of SCHANNEL on
  your system already.  Pressing the space bar at this point will
  allow installation to continue normally.

  Uninstallation does not remove QEMM from the PATH statement in
  AUTOEXEC.BAT.

  Uninstallation on Windows 95 systems will leave OPTIMIZEd
  MS-DOS program's PIFs in an OPTIMIZEd state.  If you wish to
  remove QEMM from your system, and if you have OPTIMIZEd MS-DOS
  mode PIFs, you should restore the backup of your PIF, or
  right-click on the PIF shortcut, choose Properties, the Program
  tab, and the Advanced button; then edit the CONFIG.SYS and
  AUTOEXEC.BAT manually.

  Uninstallation may not remove QEMM-related statements from
  CALLed batch files that are not in the DOS path, unless you
  have supplied a fully-qualified path to the CALLed batch file.

  If you install from DOS on a Windows system, you may receive
  error messages the first time you start Windows after
  installation.  QEMM's Windows components will be installed
  immediately after this, and the messages should subsequently
  disappear.

QEMMWIN USER INTERFACE

  Under Windows 95, on video cards that use the Cirrus CL-GD5434
  chipset with the video BIOS v1.24 (you may determine your
  chipset through Manifest's Adapters / Video report), you may
  experience a system crash when you attempt to display QEMMWIN's
  Details / Memory screen.  To resolve this problem, obtain the
  updated video drivers that are part of the Direct/X 3.0
  distribution.  Contact Cirrus Logic for details.


ERRATA AND OMISSIONS IN THE DOCUMENTATION
=========================================

QEMM's PNP:(Y/N) PARAMETER

  QEMM provides special support for Plug and Play BIOSes.  When
  Stealth is active, QEMM does not map High RAM over the Plug and
  Play signature; this allows programs to scan the system ROM and
  to find the Plug and Play signature and entry points. QEMM also
  does some patching to make sure that the machine's state is
  setup properly during P&P calls.

  QEMM's default behavior is to set PNP:Y internally to perform
  this work. PNP:N suppresses the patching that we do to leave
  the Plug and Play signature exposed and leaves the machine's
  native Plug and Play support in place.

  PNP:N is generally a bad parameter to use, since Windows 95
  makes Plug and Play calls as it starts, and those calls will
  fail if QEMM is active without its Plug and Play support. PNP:N
  might change the behavior of a system failure, but should not
  be used as a troubleshooting parameter unless the system is
  utterly failing to start up.

QEMMWIN DRIVE ALERTS

  The online help for the QEMMWIN User Interface suggests that
  QEMMWIN will monitor drive space on network drives, and will
  provide alerts in low-disk-space conditions.  QEMMWIN reports
  only on local hard drives.




