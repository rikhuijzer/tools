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

### One sample

Say that you have a vector of sample values `A` and want to test whether the mean of the population is $x$.
For illustration purposes, lets generate some data:

```{.include}
_gen/one_sample_data-sc.md
```

which is visualized in @fig:plot_one_sample_data.

```{.include}
_gen/plot_one_sample_data.md
```

To test the mean, we can start by guessing the mean of the sample, see @fig:plot_one_sample_data_mean.

```{.include}
_gen/plot_one_sample_data_mean.md
```

$$ \text{one\_sample}(X_v, W) = w_0 $$

