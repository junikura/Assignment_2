#!/bin/bash
p_csv="$1"


for file in $1; do 

	touch file2.csv
	grep 'PARK ON PRIVATE PROPERTY' $1 > file2.csv

done


# The parking infraction that I chose to output is "PARK ON PRIVATE PROPERTY"
# file2.csv will be the file where all the output from the grep function will go to
# https://stackoverflow.com/questions/46878119/how-to-extract-row-from-file-and-copy-to-another-with-bash
 # - How to push results of one file and put into new file (User: at S)
# https://stackoverflow.com/questions/67536520/bash-script-using-grep-in-a-for-loop
 # - How to use grep in a for loop - (User: Paul Hodges)

 # Juntaro Ikura



