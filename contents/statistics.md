# Predicting the future {#sec:statistics}

In essence, most of statistics is about predicting the future.
To do this, we try to summarize how the world behaves in a statistical model.
The better the model, the better we can predict the future.

Different people group these models in different ways.
Often, the groups are dichotomized which can simplify the discussion, but do note that there is usually a continuum, that is, not all models fall strictly into one category.
For example, statistics can be separated into algorithms and inference [@efron2016computer].
Then, classifying which mail is spam can be seen as a purely algorithmic problem.
If the algorithm works, then it doesn't really matter to know why it works.
In science, the focus lies more on inference, that is, to know **why** a model works and what can be **inferred** from it.

Another common distinction is between frequentist and Bayesian statistics.
For the purposes of this book, this is an useful distinction since different Julia libraries can clearly be classified to be either frequentist or Bayesian.
Unfortunately, for the purposes outside this book, the reader is encouraged to learn about both paradigms because both have their strengths and weaknesses.
Luckily, much knowledge is applicable to both paradigms like, for example, distributions, cross-validation and visualizations.

## Bayesian {#sec:bayes}
