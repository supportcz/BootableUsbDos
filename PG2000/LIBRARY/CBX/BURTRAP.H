/****************************************************************************
*                                                                           *
*  Name     : BURTRAP.H                                                     *
*  Titel    : Definitionen der BURTRAP-Library                              *
*  $Revision::   1.12                                                      $*
*  $Date::   19 Jan 1998 15:25:36                                          $*
*                                                                           *
*                                                                           *
******************************COPYRIGHT (C)**********************************
*     THIS SOFTWARE IS THE PROPERTY OF B&R AUSTRIA: ALL RIGHTS RESERVED.    *
*     NO PART OF THIS SOFTWARE MAY BE USED OR COPIED IN ANY WAY WITHOUT     *
*              THE PRIOR WRITTEN PERMISSION OF B&R AUSTRIA.                 *
*****************************************************************************
*                                                                           *
*                                                                           *
*  Projekt : B&R 2010  SPS-Software                                         *
*  Datum   : 1990-09-11                                                     *
*  Autor   : K. MINARIK                                                     *
*                                                                           *
*****************************************************************************
*                                                                           *
*  éNDERUNGEN:                                                              *
*  -----------                                                              *
*                                                                           *
*  Version  Datum       énderungsbeschreibung und Markierung                *
*  T4.01  31.10.91  Mi  BURTRAP von #5 auf #10                              *
*  T4.02  04.02.92  Mi  PV_getadr und ST_allsuspend dazu                    *
*                                                                           *
****************************************************************************/

/* Trapnummer der INSTTRAP Library */
#define         BURTRAP          10

/* Trapnummer der PSOSTRAP Library */
#define         SVCTRAP          11

/* Funktionsnummern fÅr pSOS-Calls */
#define         SM_DELETE        53
#define         SM_P             54
#define         SM_V             55

#define         TM_WKAFTER       60


/* Funktionen der BURTRAP Library */
#define         PV_LIST         00
#define         PV_IDENT        01
#define         PV_SETVAL       02
#define         PV_GETVAL       03
#define         PV_GETADR       04
#define         PV_XGETVAL      05
#define         PV_XSETVAL      06
#define         PV_INFO         07
#define         PV_XGETADR      08

#define         ST_NAME         09
#define         ST_IDENT        10
#define         ST_SUSPEND      11
#define         ST_RESUME       12
#define         ST_ALLSUSPEND   13
#define         ST_INFO         14

#define         UT_IDENT        15
#define         UT_SUSPEND      16
#define         UT_RESUME       17

#define         ERRXREAD        18

#define         UT_SENDMSG      20
#define         UT_RECMSG       21

#define         AVT_CREATE      23
#define         AVT_CANCEL      24
#define         AVT_IDENT       25
#define         AVT_ATTACH      26
#define         AVT_RELEASE     27
#define         AVT_INFO        28

#define         DA_CREATE       30
#define         DA_WRITE        31
#define         DA_IDENT        32
#define         DA_DELETE       33
#define         DA_BURN         34
#define         DA_INFO         35
#define         DA_FIX          36
#define         DA_READ         37

#define         SYSXINFO        38
#define         SYS_INFO        39
#define         SYSRESET        40
#define         KEY_ENADIS      41
#define         KEY_READ        42
#define         FORCE           43
#define         MO_LIST         44
#define         ERR_READ        45
#define         SW_GETTIME      46
#define         SW_SETTIME      47
#define         DA_STORE        48
#define         DA_COPY         49

