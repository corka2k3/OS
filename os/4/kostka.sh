#!/bin/bash
#Vytvořte skriptový soubor, který bude fungovat jako simulátor hodu 6 kostkami (klasické 6 stěnné). 
#Skript bude napsán v prostředí BASH.

Bude podporovat až 2 parametry při spuštění; 1. parametr je počet hodů (defaultně 1); 2. parametr je počet stěn kostky (defaultně 6).
hody=${1:-1} 
strany=${2:-6}

for (( i=1; i<=$hody; i++ )); do
    hod=$(( $RANDOM % $strany + 1 ))
    echo "Hod $i: $hod"
done