#!/usr/bin/env bash

# edit the code below and add your code
# отредактируйте код ниже и добавьте свой

# Переменная с номером варианта (константа):
TASKID=6

# Дополнительные переменные (должны вычисляться динамически):
VAR_1=$(echo "-1")
VAR_2=$(echo "-1")

grep -o '\([^.[:blank:]]\+\.\)\{2\}\s' dns-tunneling.log |
tr [:upper:] [:lower:] |
sort |
uniq -c |
sort -k1nr |
awk '{ print (substr($2,1,length($2)-1)"\t"$1), var2}' > results.txt;

VAR_1=$(wc -l < 'dns-tunneling.log');
VAR_2=$(wc -l < 'results.txt');
echo Число записей $VAR_1 в dns-tunneling.log;
echo Число записей $VAR_2 в results.txt;
exit

#grep -o '\([^.[:blank:]]\+\.\)\{2\}\s' dns-tunneling.log |
#tr [:upper:] [:lower:] |
#sort |
#uniq -c |
#sort -k1nr |
#awk '{ print (substr($2,1,length($2)-1)"\t"$1), var2}' > results.txt;
