*************************************************
******* POZNÁMKY K BEHU DOSu Z USB DISKU ********
*************************************************

Datum:	2013 05 27
Luboš Turanský


- Spolecne s tímto readme.txt se ve složce nachází vše potrebné k vytvorení USB falsh disku, pomocí kterého lze nabootovat do DOSu.


Postup vytovrení botovatelneho USB disku nebo CF:
1) Spustit Embeded OS installer
2) Vybrat Action type: Install windows 95/98/ME MS-DOS to a mass storage device
3) V poli Operating system files vybrat jako zdrojovou slozku "disk" (uložena v adresáøi spolu s tímto readme.txt)
4) V horní lište kliknout na Advanced OS Configuration
5) Kliknout na Partitions & Application Data a v Propperties nastavit velikost disku (napr. 1024MB) - pri vetších discích má DOS problém
6) Kliknout Run Action (horní lišta)
7) Po dokoncení akce je USB disk pripraven k použití a pocítac z nej nabootuje do DOSU

Na disku je pak predinstalovaný:
dos navigator - prohlížec
PG2000 - 
PW - tvorba vizualizace
a nekolik další nástroju ve složce Dos_Tool