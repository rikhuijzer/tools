## Frequentist {#sec:freq}

After introducing some common statistical notions in the previous sections, we can now focus on linear models and their corresponding statistical tests.
From linear models, it is possible to formulate many common tests, or very close approximations, including Pearson correlations, t-tests and ANOVAs [@lindelov2019common].
Note that linear models are as valid in the Bayesian paradigm as in the frequentist paradigm.
However, here we focus on the combination with the frequentists tests, which is why these models are listed under the frequentist section.

In line with @bishop2006pattern, generally, we can write a linear model $\text{lm}$ as

$$ \text{lm}(X_{v}, W_{m}) = w_0 + w_1 x_1 + ... + w_m x_v, $$

with input variables $X_v$ and weights $W_m$.
Note that this means that the data with $n$ measurements can be stored in a $n \times v$ matrix.
For the rest of this chapter, we assume that the errors are Gaussian.

### t-test

Given the scores for two groups, respectively denoted by $A$ and $B$, and assuming equal variances, we can formulate the Student's t-test as a linear model with only the intercept:

$$ \text{t\_test\_lm}(X_v, W) = w_0 $$

In other words, when using this model to predict whether somescore belongs in $A$ or $B$, a simple threshold is used.
For example, we can generate data from two normal distributions

```{.include}
_gen/t_test_data-sc.md
```
