**Assignment_2**


**This will be an explanation of how Assignment_1 was completed by Juntaro Ikura**


**There are four files for Assignment_1 that I created. One for each question** 
	#>Q1.sh 
	#>Q2a.sh 
	#>Q2b.sh
	#>Q2c.sh 

Sublime Text was used to generate the individual .sh file's mentioned above, and each of them were run in the command line prompt. 

**Q1.sh** 
	In Q1, the question asked to provide a script that took the parking_data.csv (already provided) and use it as a positional parameter so we can use it inside of the command line prompt. 
	
	The parking_data.csv was given a positional parameter of "$1" so that when we reference that in the code, when inputted in the command line in the first position parameter spot, it can be executed. For this question, we typed in "Q1.sh parking_data.csv". "Q1.sh" is the script file that we wanted to run. and "parking_data.csv" is the first positional parameter spot that was referenced inside of the Q1.sh file. Inside the script, the code simply outputted all the results from the parking_data.csv file by referring to the $1 positional parameter. 


**Q2a.sh**
	# We will be partially building on top of the script created from Q1.sh by using the "$1" positional parameter. In this question, we were asked to print all types of parking infractions, which was denoted in the parking_data.csv file column "infraction_description". One of the requirements was to use a function and a loop, so therefore, a "for loop" was used. A cut command wwas used to cut on the fourth column, which was the "infraction_description" column. This was redirected to the first positional parameter where it could be executed. Since the parking_data.csv contained many lines of the same type of parking infraction, we only wanted to sort and output the unique one's. In order to do this, we put "| sort | uniq" after the redirect of the positional parameter $1. In order to execute the function correctly, we ended the code with "done"

**Q2b.sh**
	# For this question, we were asked to output the minimum, maximum, and mean parking infraction fines. The parking infraction fines are located in the fifth column, and therefore, in our code, we wrote "cut -d, -f5 < "$p_csv". For the minimum, we used a "tail -1" to output the first result from the very minimum amount, and similarly, for the maximum value, we used "head -1". The function variable that was used for minimum was "min", maximum was "max" and mean was "mean"

	#For the mean value, a arithmatic calculation needed to be completed in order to sum up all the values of the parking infraction column and divide it by the total number of infractions. In order to do this, the code that was used was awk -F',' '{sum+=$5; ++n} END { print ""sum"/"n"="sum/n }' < "$p_csv". As previously descriped, after the function is finished running, we follow it by "done". In the command line prompt, in order to have the user understand what these outputs mean from the above, we had to echo a string of text prior to the output of the result. Therefore, for each of the variables min,max, and mean, we referenced them by "$(variable)", and the string accoringly so that when the user entered in "Q2b.sh parking_data.csv", the output would describe in plain text, the meaning of the results generated. 


**Q2c.sh** 
	# For the last question, we were asked to choose one specific type of parking infraction, and have the output of the resulting lines be saved in a new .csv file. In order to do this, "touch" command was used in order to create the file where the output of the results will be contained. For the purposes of this question, I denoted the new file to be named "file2.csv" and the specific parking infraction that I chose was "PARK ON PRIVATE PROPERTY". In order to generate the lines that are specific to "PARK ON PRIVATE PROPERTY", a grep was used for this specific text. Grepping also allows for extraction of all the other columns in those specific rows. These results were redirected to the file2.csv file. After the command was run in the command line prompt via "Q2c.sh parking_data.csv", the "file2.csv" would be created along with all the results inside the code from the greping of "PARK ON PRIVATE PROPERTY" Similarly with the previous questions, the function was ended with "done"


