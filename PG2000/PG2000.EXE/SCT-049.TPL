Systemkonfiguration
RPS Name............................@1,33,%s,*@
Prozessortyp........................@1,11,%s,*@
RPSSW Version.......................@1,22,%s,*@
Paáwort.............................@1,0,%s,*@
Zielspeicher........................@\TARGET@
@\MEMPAGE@
______________________________________________________
Speicher
        Globale Merker:
                analog..............@2,0,%ld Byte,long@
                digital.............@2,4,%ld Bit,long@
        Permanente Merker:
                analog..............@2,12,%ld Byte,long@
                digital.............@2,16,%ld Bit,long@
        Speicher:
                FIX-RAM.............@2,20,%ld kByte,long@
                Tempor„r............@2,24,%ld kByte,long@
@\MEMPAGEEND@@\MODPAGE@
______________________________________________________
Module
        Logbucheintr„ge.............@3,0,%ld,long@
        Zyklische Tasks.............@3,4,%ld,long@
        Restzeittasks...............@3,8,%ld,long@
        System Tasks................@3,12,%ld,long@
        B&R Module..................@3,16,%ld,long@
@\MODPAGEEND@@\TKPAGE@
______________________________________________________
Taskklassen
        Anzahl der Taskklassen......@\TKCOUNT@
        Stackgr”áe:
                User................@4,2,%ld Byte,long@
                Interrupt...........@4,6,%ld Byte,long@
@\TKLOOP@
        Taskklasse @\TKLOOPINDEX@
        Zeitverhalten:
                Zyklusdauer.........@4,0,%ld,long,a@
                Toleranz............@4,4,%ld,long,a@
                Restzeit............@4,8,%f,float,a@
        Merker:
                analog..............@4,16,%ld,long,a@
                digital.............@4,20,%ld,long,a@        
@\TKLOOPEND@@\TKPAGEEND@@\SSPAGE@
______________________________________________________
HS Taskklassen
        Anzahl der HS Taskklassen...@\SSCOUNT@
@\LIST1:1=HW-Timer,2=RIO/PP-FUB@@\LIST0:1=nie,2=durch IRQ-TK,3=immer@@\SSLOOP@
        HS Taskklasse @\SSLOOPINDEX@
        Zeitverhalten:
                Zeitbasis...........@5,8,%LIST1,int,a@
                Zyklusdauer.........@5,0,%3.1f ms,float,a@
                Unterbrechbar.......@5,10,%LIST0,int,a@
        Stack:
                User................@5,16,%ld Byte,long,a@
                Interrupt...........@5,12,%ld Byte,long,a@
@\SSLOOPEND@@\SSPAGEEND@@\EXCPAGE@
______________________________________________________
EXC Taskklasse@\SSLOOPINDEX=7@
        Anzahl der Module...........@5,0,%.0f,float,a@
        Unterbrechbar...............@5,10,%LIST0,int,a@
        Stack:
                User................@5,16,%ld Byte,long,a@
                Interrupt...........@5,12,%ld Byte,long,a@
@\EXCPAGEEND@@\IRQPAGE@
______________________________________________________
IRQ Taskklasse@\SSLOOPINDEX=8@
        Anzahl der Module...........@5,0,%.0f,float,a@
        Unterbrechbar...............@5,10,%LIST0,int,a@
        Stack:
                User................@5,16,%ld Byte,long,a@
                Interrupt...........@5,12,%ld Byte,long,a@
@\IRQPAGEEND@@\TIPAGE@
______________________________________________________
Time Outs
        Erlaubte Systemzeit Verletzung: @6,0,%.3f,float@
        Warten
                bei Kaltstart.......@6,8,%.3f,float@
                bei Warmstart.......@6,16,%.3f,float@
                auf POWERFAIL.......@6,24,%.3f,float@
@\TIPAGEEND@@\BSPAGE@@\LIST0:1=Diagnose,2=Kaltstart@
______________________________________________________
Betriebssystem
        Kommunikation
           Kommunikations Kan„le....@8,0,%ld,long@
           Ger„tetreiber............@8,4,%ld,long@
           Force Auftr„ge...........@8,26,%ld,long@
           PV Tabellen..............@8,30,%ld,long@
           Log. Variablenlisten.....@8,34,%ld,long@
           Phy. Variablenlisten.....@8,38,%ld,long@
        B&R OS
          Systembuskarten...........@8,42,%ld,long@
          AVT-Eintr„ge..............@8,8,%ld,long@
          Semaphoren................@8,12,%ld,long@
          Queues....................@8,16,%ld,long@
          Daten/Stack...............@8,20,%#lx,long@
          Hochlauf nach Fehler @8,24,%LIST0,byte@
@\BSPAGEEND@@\RBPAGE@
______________________________________________________
Remote I/O
Konfigurationen @\RBCOUNT@@\LIST0:1=Master,2=ISL@@\LIST1:Nein,Ja@
@\RBLOOP@
Einstellungen fr RIO @\RBLOOPINDEX@@\LIST2:1=2M,2=2M,3=500k,4=181k,5=100k@
        Steckplatz..................@9,30,%ld,long,a@
        Betriebsart.................@9,0,%LIST0,int,a@
        Baudrate....................@9,2,%LIST2,int,a@
        Redundanz...................@9,4,%BOOL1,byte,a@
        TimeoutIO...................@9,6,%ld ms,long,a@
        SlaveTimeOut................@9,10,%ld sec,long,a@
        Max. Stationen..............@9,14,%ld,long,a@
        Repeat Count................@9,18,%ld,long,a@
        Priorit„ten.................@9,22,%ld,long,a@@\LIST2:0=Default,1=Enable,2=Disable@
        Slaves......................@9,26,%RBSP2,byte,a@@\LIST2:0=-,1=Inaktiv,2=Aktiv,3=Exception@
           Ausfall quittieren.......@9,27,%LIST2,byte,a@
           Ready   quittieren.......@9,28,%LIST2,byte,a@
@\RBLOOPEND@@\RBPAGEEND@@\CAPAGE@
______________________________________________________
CAN I/O@\LIST1:255=Lokal,0=PS,1=1,2=2,3=3,4=4,5=5,6=6,7=7,8=8,9=9,10=10,11=11,12=12,13=13@
Konfigurationen @\CACOUNT@@\LIST2:Nein,Ja@
@\CALOOP@
Einstellungen fr CAN @\CALOOPINDEX@@\LIST0:0=kein SS,1=SS1,2=SS2,3=SS3,4=SS4@
        Steckplatz..................@12,0,%LIST1,byte@
        Subslot.....................@12,2,%LIST0,long@@\LIST0:1=IF1,2=IF2,3=IF3,4=IF4,15=-@
        Interface...................@12,6,%LIST0,long@
        Baudrate....................@12,14,%ldkBIT/s,long@
        SlaveTimeOut................@12,18,%ld ms,long@
        TimeoutIO...................@12,22,%ld ms,long@
        Repeat Count................@12,30,%ld,long@@\LIST0:0=Ja,255=Nein@
        Unterbrechbar...............@12,34,%LIST0,long@
        Anzahl ANP Module...........@12,26,%ld,long@
        Anzahl Slaves...............@12,10,%ld,long@
        Slaves Exception bei@\LIST0:1=Ja,2=Nein@
           Ausfall..................@12,42,%LIST0,byte@
           Ready....................@12,43,%LIST0,byte@
           Alarm....................@12,44,%LIST0,byte@
           fehlendem Modul..........@12,45,%LIST0,byte@
@\CNLOOP@
        Knoten Parameter @\CNLOOPINDEX@
        Knoten Nummer: @14,0,%ld,long@
        Idlezeit
          Digital IN :@14,12,%ld ms,long@      Digital OUT:@14,4,%ld ms,long@
          Analog  IN :@14,16,%ld ms,long@      Analog  OUT:@14,8,%ld ms,long@
        Zykluszeit              Inhibitzeit
          Digital IN :@14,20,%ld ms,long@      Digital IN :@14,28,%ld ms,long@
          Analog  IN :@14,24,%ld ms,long@      Analog  IN :@14,32,%ld ms,long@
@\CNLOOPEND@
@\CALOOPEND@@\CAPAGEEND@@\23PAGE@
______________________________________________________
2003 I/O
        Anzahl der aktualisierten
        IO-Kan„le pro IO-Zyklus.....@11,0,%ld,long@ (0 -> Alle)
@\23PAGEEND@@\PBPAGE@
______________________________________________________
PB Indizes
                          von   bis
        Datentyp         $@10,0,%04lx,long@ $@10,4,%04lx,long@
        Struktur         $@10,8,%04lx,long@ $@10,12,%04lx,long@
        Variablenliste   $@10,16,%04lx,long@ $@10,20,%04lx,long@
        Program Invoc    $@10,24,%04lx,long@ $@10,28,%04lx,long@
        Domain           $@10,32,%04lx,long@ $@10,36,%04lx,long@
        Prozeávariable   $@10,40,%04lx,long@ $@10,44,%04lx,long@
@\PBPAGEEND@@\KOPAGE@
______________________________________________________
Kommunikation@\LIST1:0=Lokal,1=SL1,2=SL2,3=SL3,4=SL4,5=SL5,6=SL6,7=SL7,8=SL8,9=SL9,10=SL10,11=SL11,12=SL12,13=SL13@
Konfigurationen @\KOCOUNT@
@\KOLOOP@
Konfiguration @\KOLOOPINDEX@@\LIST0:0=kein SS,1=SS1,2=SS2,3=SS3,4=SS4@
        Steckplatz.................@13,2,%LIST1,int@
        Subslot....................@13,4,%LIST0,int@@\LIST0:1=IF1,2=IF2,3=IF3,4=IF4,15=-@
        Interface..................@13,6,%LIST0,int@@\LIST0:0=Seriell,1=CAN,3=PB@
        Typ........................@13,0,%LIST0,int@
        Parameter
        @13,8,%s,**@
@\KOLOOPEND@@\KOPAGEEND@
Ende
