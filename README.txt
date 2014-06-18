================================================================
Getting and Cleaning data Project 1
================================================================
Denis HeounMo Go
heounmog@tepper.cmu.edu
================================================================


The whole process of the script is following:

1. Read raw data files including X, Y, and subject IDs.

2. At the beginning, the raw data(train X and test X) is red as a long character line, so it has to be converted into numeric data frame.

   a. Split each value in a line by separtor of " "
   b. Remove unnesessary " " in each line and convert into data frame by converting it into matrix first and into data frame afterward.

3. Merge the train and test data

4. Read the features file and add them in the data frame

5. Select only variable names(Remove number index)

6. Select only mean() and std() variables and make another data table for them

7. Add labels and subjects column into the MeanStd data frames

8. Add descriptive activity name variable

9. Get average value of each value by activities and subjects

10.Modify some variable names including typo in original data files

11. Export the tidy data to a file.





