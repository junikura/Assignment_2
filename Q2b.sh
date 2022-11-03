#!/bin/bash
p_csv="$1"

for file in $1; do

function min {

	cut -d, -f5 < "$p_csv" | sort -nr | tail -1
	return
}

# Obtains the minimum set fine amount 
#https://www.declarecode.com/code-solutions/shell/how-to-find-max-and-min-in-column-bash 
	# - Partial code to know how to obtain minimum value
# https://stackoverflow.com/questions/28790371/bash-finding-maximum-value-in-a-particular-csv-column
	#  - Partial code to know how to obtain minimum value (Poster: clt60)

 function max {

 	cut -d, -f5 < "$p_csv" | sort -nr | head -1
 	return 
 }

# Obtains the maximum set fine amount
# #https://www.declarecode.com/code-solutions/shell/how-to-find-max-and-min-in-column-bash 
	# - Partial code to know how to obtain maximum value 
# # https://stackoverflow.com/questions/28790371/bash-finding-maximum-value-in-a-particular-csv-column
	# - Partial code to know how to obtain maximum value (Poster: clt60)
function mean { 

	awk -F',' '{sum+=$5; ++n} END { print ""sum"/"n"="sum/n }' < "$p_csv" 
}

# Obtains the mean set fine amount
# https://stackoverflow.com/questions/1886157/a-simple-small-shell-script-to-compute-averages
  # - Code to know how to obtain mean value (Poster SiegeX) 

done

echo "The minimum set fine amount is $(min)"
echo "The maximum set fine amount is $(max)"
echo "The mean set fine amount is $(mean)"

#Echo's the min, max, and mean set fine amount in a sentence that is understandable to the user reading the output 
 #https://linuxhint.com/bash_echo_variable/

# Juntaro Ikura
