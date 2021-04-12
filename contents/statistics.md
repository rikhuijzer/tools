# Predicting the future {#sec:statistics}

If you are like me and, basically, all scientists, you want to predict the future.
With good predictions, you can do things like earning tons of money via stock markets or successfully treating patients, scaling up your favorite chemical process or getting your rocket into space.
Even historians work like this, they meticulously investigate the past and use that knowledge to make predictions.
For example, @harari2014sapiens is a book by Yuval Noah Harari describing a brief history of humankind and is superseded by @harari2016homo where Harari describes the future.
These predictions are obtained by first reducing the complexity of the world by arguing that the world can be simplified in a certain way.
This is also known as using a _model_.
Then, after convicing the audience that the model is an accurate simplification of the real world, it can be applied to make a prediction.
In some situations, particularity science, this approach is not considered precise enough.
For example, to get new medication approved, it isn't sufficient to argue that the medication is effective because

- some patients say that they feel less sick after getting the medication,
- many patients found the medication tasty _and_
- you feel good after handing out the medication.

Instead, approval is obtained by applying models on data.
A similar conclusion, based on a statistical model, would be

- patients who received the medication have significantly lower values of X which indicates that they are less sick.

So, it is expected that the world is simplified into a statistical model and to use that to prove the effectiveness of the medication.
Unfortunately, this tradeoff between accuracy and complexity is a well-known problem in science.
To see why this is the case, lets take a look at determinism which will lead us to causality and distributions.

Determinism ...

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

One core element of these models are distributions which are discussed in @sec:distributions.
