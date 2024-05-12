#!/bin/bash
#napište skript, kterýv zadané cestě(předané jako argumnet skriptu) přejmenuje všechny soubory *jpe na soubory imageNNN.jpeg, kde NNN je pořadové číslo výskytu souboru v adresáři.

path=$1
count=1

for file in $path/*jpe; do
  new_name="image$(printf "%03d" $count).jpeg"
  mv "$file" "$path/$new_name"
  ((count++))
done
