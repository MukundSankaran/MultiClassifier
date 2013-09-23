MultiClassifier
===============

This project consists of a set of matlab files which can classify a dataset into multiple classes.

This was a class project for the Data Mining (CSE 572) course at Arizona State University.

The training and testing datasets which are the inputs to these files have not been provided since I do not have permission to distribute them. Instructions have been provided on how to create these input datasets and alter the code as required.

Creating the input datasets
---------------------------

1. Create a text file called 'training.txt' which contains three columns. The first column is the data point number, the second column is the feature number and the third column is the value of the feature.

eg:  1 23 5
     1 14 1
     1 52 6
     2 12 2
     2 15 7
     3 27 1
     4 76 4

2. Create a file called 'label_training.txt' which contains the labels for all the rows of the training set.

eg: 1
    2
    4
    7
    9

3. Create a file called 'testing.txt' which is similar to 'training.txt'. This contains all the data points that need to be classified.

4. The dataset used for this project consisted of a training set having 10K+ datapoints and 100K+ features. The number of classes was 20.

Running the code
----------------   	

1. On line #7 of "classifier.m" change the first parameter of the zeros function to the number of features in the input datasets. Do the same on line #8 for the number of times the loop should run (which is equal to the number of features).

2. On line #13, adjust the value through trial and error until the cross validated accuracy for the training set is the highest.

3. Run the 'classifier.m' code. This code will call 'MutualInformation.m' which uses 'Entropy.m' and 'JointEntropy.m'. The last three files are available for free online on the Mathworks website.  
  
4. The results of the classification of the test dataset are available in the results matrix which is created when the code terminates.       
