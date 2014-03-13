System Configuration
PCC Name............................@1,33,%s,*@
Processor Type......................@1,11,%s,*@
PCCSW Version.......................@1,22,%s,*@
Password............................@1,0,%s,*@
@\MEMPAGE@
______________________________________________________
Memory
        Global Variables:
                analog..............@2,0,%ld Byte,long@
                digital.............@2,4,%ld Bit,long@
        Permanent Variables:
                analog..............@2,12,%ld Byte,long@
                digital.............@2,16,%ld Bit,long@
        Memory:
                FIX-RAM.............@2,20,%ld kByte,long@
                Temporary...........@2,24,%ld kByte,long@
@\MEMPAGEEND@@\MODPAGE@
______________________________________________________
Module
        Log Book Entries............@3,0,%ld,long@
        Cylcic Tasks................@3,4,%ld,long@
        Rest Time Tasks.............@3,8,%ld,long@
        System Tasks................@3,12,%ld,long@
        B&R Modules.................@3,16,%ld,long@
@\MODPAGEEND@@\TKPAGE@
______________________________________________________
Task Classes
        Number of Task Classes......@\TKCOUNT@
        Stack Size:
                User................@4,2,%ld Byte,long@
                Interrupt...........@4,6,%ld Byte,long@
@\TKLOOP@
        Task Class @\TKLOOPINDEX@
        Timing:
                Cycle Time..........@4,0,%ld,long,a@
                Tolerance...........@4,4,%ld,long,a@
                Idle Time...........@4,8,%f,float,a@
        Variables:
                analog..............@4,16,%ld,long,a@
                digital.............@4,20,%ld,long,a@        
@\TKLOOPEND@@\TKPAGEEND@@\SSPAGE@
______________________________________________________
HS Task Classes
        Number of HS Task Classes...@\SSCOUNT@
@\LIST1:1=HW-Timer,2=RIO/PP-FBK@@\LIST0:1=never,2=with IRQ-TK@@\SSLOOP@
        HS Task Class @\SSLOOPINDEX@
        Timing:
                Time Base...........@5,8,%LIST1,int,a@
                Cycle Time..........@5,0,%3.1f ms,float,a@
                Interruptable.......@5,10,%LIST0,int,a@
        Stack:
                User................@5,16,%ld Byte,long,a@
                Interrupt...........@5,12,%ld Byte,long,a@
@\SSLOOPEND@@\SSPAGEEND@@\EXCPAGE@
______________________________________________________
EXC Task Class@\SSLOOPINDEX=7@
        Number of Modules...........@5,0,%.0f,float,a@
        Interruptable...............@5,10,%LIST0,int,a@
        Stack:
                User................@5,16,%ld Byte,long,a@
                Interrupt...........@5,12,%ld Byte,long,a@
@\EXCPAGEEND@@\IRQPAGE@
______________________________________________________
IRQ Task Class@\SSLOOPINDEX=8@
        Number of Modules...........@5,0,%.0f,float,a@
        Interruptable...............@5,10,%LIST0,int,a@
        Stack:
                User................@5,16,%ld Byte,long,a@
                Interrupt...........@5,12,%ld Byte,long,a@
@\IRQPAGEEND@@\TIPAGE@
______________________________________________________
Time Outs
        Set System Time Violation: @6,0,%.3f,float@
        Delay
                Cold Start........@6,8,%.3f,float@
                Warm Start........@6,16,%.3f,float@
                POWERFAIL...........@6,24,%.3f,float@
@\TIPAGEEND@@\BSPAGE@@\LIST0:1=Diagnose,2=Cold Start@
______________________________________________________
Operating System
        Communication
           Communications Channel...@8,0,%ld,long@
           Device Driver............@8,4,%ld,long@
           Force Entries............@8,26,%ld,long@
           PV Tables................@8,30,%ld,long@
           Log. Variable Lists......@8,34,%ld,long@
           Phy. Variable Lists......@8,38,%ld,long@
        B&R OS
          System Bus Cards..........@8,42,%ld,long@
          AVT Entries...............@8,8,%ld,long@
          Semaphores................@8,12,%ld,long@
          Queues....................@8,16,%ld,long@
          Data/Stack................@8,20,%#lx,long@
          Boot after Error @8,24,%LIST0,byte@
@\BSPAGEEND@@\RBPAGE@
______________________________________________________
Remote I/O
Configurations @\RBCOUNT@@\LIST0:1=Master,2=ISL@@\LIST1:No,Yes@
@\RBLOOP@
Settings for RIO @\RBLOOPINDEX@@\LIST2:1=2M,2=2M,3=500k,4=181k,5=100k@
        Slot........................@9,32,%ld,long,a@
        Type of Operation...........@9,0,%LIST0,int,a@
        Baudrate....................@9,2,%LIST2,int,a@
        Redundancy..................@9,4,%BOOL1,byte,a@
        TimeoutIO...................@9,6,%ld ms,long,a@
        SlaveTimeOut................@9,10,%ld sec,long,a@
        Max. Stations...............@9,14,%ld,long,a@
        Repeat Count................@9,18,%ld,long,a@
        Priorities..................@9,22,%ld,long,a@@\LIST2:0=Default,1=Enable,2=Disable@
        Slaves......................@9,26,%LIST2,byte,a@@\LIST2:0=-,1=Inactive,2=Active,3=Exception@
           Acknowledge Drop out.....@9,28,%LIST2,byte,a@
           Ready Acknowledgement....@9,30,%LIST2,byte,a@
@\RBLOOPEND@@\RBPAGEEND@@\CAPAGE@
______________________________________________________
CAN I/O@\LIST1:255=Lokal,0=PS,1=1,2=2,3=3,4=4,5=5,6=6,7=7,8=8,9=9,10=10,11=11,12=12,13=13@
Configurations @\CACOUNT@@\LIST2:No,Yes@
@\CALOOP@
Settings for CAN @\CALOOPINDEX@@\LIST0:0=no HS,1=HS1,2=HS2,3=HS3,4=HS4@
        Slot........................@12,0,%LIST1,byte@
        Subslot.....................@12,2,%LIST0,long@@\LIST0:1=IF1,2=IF2,3=IF3,4=IF4,15=-@
        Interface...................@12,6,%LIST0,long@
        Baudrate....................@12,14,%ldkBIT/s,long@
        SlaveTimeOut................@12,18,%ld ms,long@
        TimeoutIO...................@12,22,%ld ms,long@
        Repeat Count................@12,30,%ld,long@@\LIST0:0=Ja,255=Nein@
        Interruptable...............@12,34,%LIST0,long@
        Number of Screw-in Modules..@12,26,%ld,long@
        Number of Slaves...............@12,10,%ld,long@
        Slaves Exception bei@\LIST0:1=Yes,2=No@
           Drop-out.................@12,42,%LIST0,byte@
           Ready....................@12,43,%LIST0,byte@
           Alarm....................@12,44,%LIST0,byte@
           Module Missing...........@12,45,%LIST0,byte@
@\CNLOOP@
        Node Parameter @\CNLOOPINDEX@
        Node Number: @14,0,%ld,long@
        Idle Time
          Digital IN :@14,12,%ld ms,long@      Digital OUT:@14,4,%ld ms,long@
          Analog  IN :@14,16,%ld ms,long@      Analog  OUT:@14,8,%ld ms,long@
        Cycle Time              Inhibit Time
          Digital IN :@14,20,%ld ms,long@      Digital IN :@14,28,%ld ms,long@
          Analog  IN :@14,24,%ld ms,long@      Analog  IN :@14,32,%ld ms,long@
@\CNLOOPEND@
@\CALOOPEND@@\CAPAGEEND@@\23PAGE@
______________________________________________________
2003 I/O
        Number of actualized
        IO channels per IO cycle.....@11,0,%ld,long@ (0 -> All)
@\23PAGEEND@@\PBPAGE@
______________________________________________________
PB Indices
                          from   til
        Data Type        $@10,0,%04lx,long@ $@10,4,%04lx,long@
        Structure        $@10,8,%04lx,long@ $@10,12,%04lx,long@
        Variable List    $@10,16,%04lx,long@ $@10,20,%04lx,long@
        Program Invoc    $@10,24,%04lx,long@ $@10,28,%04lx,long@
        Domain           $@10,32,%04lx,long@ $@10,36,%04lx,long@
        Process Variable $@10,40,%04lx,long@ $@10,44,%04lx,long@
@\PBPAGEEND@@\KOPAGE@
______________________________________________________
Communication@\LIST1:0=Local,1=1,2=2,3=3,4=4,5=5,6=6,7=7,8=8,9=9,10=10,11=11,12=12,13=13@
Configurations @\KOCOUNT@
@\KOLOOP@
Configuration @\KOLOOPINDEX@@\LIST0:0=none HS,1=HS1,2=HS2,3=HS3,4=HS4@
        Slot.......................@13,2,%LIST1,int@
        Subslot....................@13,4,%LIST0,int@@\LIST0:1=IF1,2=IF2,3=IF3,4=IF4,15=-@
        Interface..................@13,6,%LIST0,int@@\LIST0:0=Seriell,1=CAN,3=PB@
        Type.......................@13,0,%LIST0,int@
        Parameter
        @13,8,%s,*@
@\KOLOOPEND@@\KOPAGEEND@
Ende
