#!/bin/bash

# Paraméterek száma
paramszam=$#

# Az egyes paraméterek $n
param1=$1
param2=$2

# Kiírás újsor nélkül
echo -n "Alma"

# Beolvasás konzolról
valtozo=
read valtozo

# Várakozás
sleep 1 # 1 másodperc

# Dátum / idő komponens (man date)
ora=`date +%H`
perc=`date +%M`
masodperc=`date +%S`

# Külső parancs hívása eredmény visszaadással
eredmeny=`expr 5 \* 5`
eredmeny=`expr 5 + 5`

# Utolsó futtatott parancs kilépési kódja
sikeres_ha_nulla=$?

# Véletlenszám 1 és 100 minimummal / maximummal (#!/bin/bash kell hozzá!)
veletlen=`expr $RANDOM % 100 + 1`

# Logikai kifejezés (test parancs), a parancs futásának kilépési kódja 0, ha igaz volt
[ 42 -eq 43 ]

# if-ben lehet használni
if [ 42 -eq 42 ]
then
	echo "Reméltük"
else
	echo "Ajjaj"
fi

# Összehasonlítások (továbbiak: man test)
[ 42 -eq 42 ] # számok egyeznek
[ 42 -ne 43 ] # számok nem egyeznek
[ 42 -lt 43 ] # első szám kisebb
[ 42 -le 43 ] # első szám kisebb vagy egyenlő
[ 43 -gt 42 ] # első szám nagyobb
[ 43 -ge 42 ] # első szám nagyobb vagy egyenlő
[ "alma" = "alma" ] # két szöveg egyenlő
[ "alma" != "korte" ] # két szöveg nem egyenlő
[ -f "alma.txt" ] # fájl létezik
[ 42 -eq 42 -a 43 -eq 43 ] # és: -a

# Ciklusok

# WHILE ciklus

i=0
while [ $i -lt 42 ]
do
	echo $i
	i=`expr $i + 1`
done

# "Hátultesztelős" WHILE ciklus

i=0
while
	
	echo -n "i: "
	echo $i
	i=`expr $i + 1`
	
	[ $i -lt 4 ] # ha eléri a 4-et, kilép
do
	nop=  # itt valami kell, mert különben hiba
done

# FOR ciklus

# Számokon megyünk végig

for n in `seq 42`
do
	echo "A szám: $n"
done

# Fájl sorain megyünk végig

for sor in `cat shellscript.sh`
do
	echo $sor
done
