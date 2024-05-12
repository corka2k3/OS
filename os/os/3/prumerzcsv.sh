#!/bin/bash

# Získání průměrného věku pracovníků ze souboru pracovnici-utf8.csv
average_age=$(cut -d';' -f5 pracovnici-utf8.csv | awk '{sum += $1; n++} END {print sum/n}')

# Výpis průměru věků pracovníků
echo "průměr věků pracovníků:$average_age"
