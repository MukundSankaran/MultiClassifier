%Load Training data and class labels
load 'training.txt';
load 'label_training.txt'
%Generate Sparse Matrix representation of training data
train = spconvert(training);
%Discover mutual information between each feature and class labels
mutual = zeros(108520,1);
for(i=1:108520)
mutual(i) = MutualInformation(train(:,i),label_training);
end
%Sort mutual information by descending order and take top 45K features
[a,b] = sort(mutual,'descend');
e = b(1:45000);
tr = train(:,e);
%Apply Naive Bayes classification and perform cross validation on the training data
indices = crossvalind('Kfold',label_training,10);
cp = classperf(label_training);
for i = 1:10
    test = (indices == i); train = ~test;
    nb = NaiveBayes.fit(tr(train,:),label_training(train,:),'Distribution','mn');
    class = nb.predict(tr(test,:));
    classperf(cp,class,test)
end
%Load testing data
load testing.txt;
%Predict class labels for test set
results = nb.predict(testing(:,e));