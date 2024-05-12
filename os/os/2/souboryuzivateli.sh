#!/bin/bash
#Zamerem bylo zkontrolovat, jeslti byl uzivatelem zadan argument. Pokud ne, tak pres PWD beru aktualni adresar a oteviram tam. Jinak predavam funkci argument
echo "Uživatel: $USER" 
if [$1 == ""];then
    find $PWD -user $USER -perm 722
else
    find $1 -user $USER -perm 722
fi
