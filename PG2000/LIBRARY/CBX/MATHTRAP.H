/****************************************************************************
*                                                                           *
*  Name     : mathtrap.h                                                    *
*  Titel    : DEFINES fÅr die MATHTRAP-Library                              *
*  Version  : V1.20                                                         *
*  Datum    : 22 Apr 1996 01:20:00                                          *
*                                                                           *
******************************COPYRIGHT (C)**********************************
*     THIS SOFTWARE IS THE PROPERTY OF B&R AUSTRIA: ALL RIGHTS RESERVED.    *
*     NO PART OF THIS SOFTWARE MAY BE USED OR COPIED IN ANY WAY WITHOUT     *
*              THE PRIOR WRITTEN PERMISSION OF B&R AUSTRIA.                 *
*****************************************************************************
*                                                                           *
*  Project  : B&R 2010 / SPS-Software                                       *
*                                                                           *
****************************************************************************/

#ifndef     _MATHLIB

#define     _MATHLIB


/**************************************/
/***        D E F I N E S           ***/
/**************************************/

#ifndef LONG
   #define LONG unsigned int
#endif

#ifndef  INT32
    #define INT32 int
#endif

/**************************************/
/***     P R O T O T Y P I N G      ***/
/**************************************/

/******** Long-Services *********/

extern  LONG  lmulu (LONG  x, LONG  y);
extern  INT32 lmuls (INT32 x, INT32 y);
extern  LONG  ldivu (LONG  x, LONG  y);
extern  INT32 ldivs (INT32 x, INT32 y);
extern  LONG  lremu (LONG  x, LONG  y);
extern  INT32 lrem  (INT32 x, INT32 y);


/******** FLOAT arithm. Operations *******/

extern  float  fadd  (float y, float x);
extern  float  fsub  (float y, float x);
extern  float  fmul  (float y, float x);
extern  float  fdiv  (float y, float x);
extern  float  fneg  (float x);
extern  float  fcmp  (float y, float x);


/******** Konvertierung ***********/

extern  float    L_TO_F   (LONG  x);
extern  float    I32_TO_F (INT32 x);
extern  LONG     F_TO_L   (float x);
extern  INT32    F_TO_I32 (float x);

extern  INT32    abs      (INT32 x);
extern  float    atof     (char *ascii_string);


/****** ** Transzendente math. Funktionen ********/

extern  float  acos  (float x);
extern  float  asin  (float x);
extern  float  atan  (float x);
extern  float  atan2 (float y, float x);
extern  float  cos   (float x);
extern  float  sin   (float x);
extern  float  tan   (float x);
extern  float  cosh  (float x);
extern  float  sinh  (float x);
extern  float  tanh  (float x);
extern  float  exp   (float x);
extern  float  frexp (float value, INT32 *exp);
extern  float  ldexp (float x, INT32 exp);
extern  float  log   (float x);
extern  float  log10 (float x);
extern  float  modf  (float value, float *ipart);
extern  float  pow   (float x, float y);
extern  float  sqrt  (float x);
extern  float  ceil  (float x);
extern  float  fabs  (float x);
extern  float  floor (float x);
extern  float  fmod  (float x, float y);


#endif   /* _MATHLIB */

