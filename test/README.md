run_analysis.R

The code is broken into 6 parts reflecting the five steps in the course instructions and an additional set up stage.

SET UP
Add in relevant libraries
Set working directories

PART 1
All relevant data is loaded in from the working directory.
The column names have also been re-named to more useful things so we can end up with a tidy data set.

cbind and rbind are used to paste all the data together into one dataset for the test and train data.

PART 2
As we are only concerned about variables that are mean or standard deviation we look at the variable names for variables containing "mean" or "std".

Means that are not just simply the mean signal (e.g. "MeanFreq") have been included as they were deemed to still be means as requested in the question description.

PART 3
The activity names are merged with the reduced data set containing information on the means and standard deviation.

PART 4
This part does not contain any code as the column names were all sorted out in previous parts

PART 5
We summarise the data to make a new tidy data set and export the results