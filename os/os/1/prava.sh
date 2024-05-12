#!/bin/bash
#vypsání souborů, jejichž vlastník není root a nemají práva spustitelnosti, a ostatní mají zápisová práva:
find / -type f ! -user root ! -perm /u=x -perm /o=w -ls
