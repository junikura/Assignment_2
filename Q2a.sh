#!/bin/bash
p.csv ="$1"

for file in $1; do 

cut -d, -f4 < $1 | sort | uniq

done

#Prints all types of parking infractions 
# https://stackoverflow.com/questions/45704484/pipelining-cut-sort-uniq
 # - How to cut, sort, and fine unique data in file (user707650)

 # Juntaro Ikura