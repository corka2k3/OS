#!/bin/bash
#Myslenkou bylo pomoci date se dopocitat kolik dni bude zbyvat k dalsimu datu velikonoc
TODAY=$(date +%j)
YEAR= $(date +%Y)
EASTER = $(ncal -e $YEAR)
NUMBER = $(date -d $EASTER +%j)
echo $TODAY
echo $YEAR
echo $EASTER
echo $NUMBER
echo "Zbyva $(($NUMBER - $TODAY)) dni do Velikonoc."
