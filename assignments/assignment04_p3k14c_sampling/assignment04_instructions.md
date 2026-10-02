# Assignment 4 Instructions: Sampling Archaeological Radiocarbon Data

## Purpose

This exercise uses archaeological radiocarbon data to investigate a
central problem in statistical inference: **different samples from the
same population can produce different statistics**. You will use
repeated random sampling to visualize this sampling variability and then
compare it with a deliberately restricted sampling frame to examine
sampling bias.

The statistical focus is limited to the concepts introduced in Week 7.
You are not being asked to conduct chronological modelling or infer
prehistoric population change from the dates.

## 1. Inspect the Teaching Population

Import `p3k14c_sampling.csv` into R and inspect its structure. For this
exercise, treat all **984 radiocarbon determinations** in the file as
the reference population.

Identify the unit of analysis, the variable used for the sampling
exercise (`age`), the population size, the population mean of `age`, and
the overall distribution of `age`. Use an appropriate summary and
visualization to describe the reference population briefly.

Remember that `age` is the **conventional radiocarbon age in BP**. In
this assignment it is used as a numerical variable for studying sampling
behavior, not as a calibrated calendar date.

## 2. Draw Random Samples

Using the sample sizes specified in the starter file, draw random
samples from the 984-row reference population and calculate the mean
`age` for each sample. Repeat the sampling process many times at each
sample size using the supplied workflow/code structure so that the
analysis is reproducible.

The important quantity is not the distribution of individual radiocarbon
ages in one sample. It is the distribution of the **sample means across
repeated samples**.

## 3. Examine Sampling Distributions

For each sample size, visualize the resulting sampling distribution of
the sample mean. Compare where the distributions are centered relative
to the reference-population mean, how much the sample means vary, and
how their spread changes as sample size increases.

Relate the spread of the sampling distributions to **standard error**.
You do not need to derive the standard-error formula, but you should
explain the relationship between sample size and the variability of
sample means.

## 4. Compare Sample Size and Precision

Explain why increasing sample size generally produces more stable
estimates of the population mean. Distinguish the **standard deviation
of individual observations** from the **standard error of the sample
mean**.

Do not interpret a narrower sampling distribution as proof that every
large sample is representative. Precision and representativeness are
different properties.

## 5. Examine a Restricted Sampling Frame

Use the **restricted sampling frame specified in the starter file**.
This restriction deliberately excludes part of the 984-row reference
population.

Compare the mean `age` of the full reference population, the mean `age`
of the restricted frame, and repeated-sampling distributions produced
from the restricted frame. Then examine what happens as sample size
increases **within the restricted frame**.

The purpose is to determine whether increasing sample size removes the
systematic difference created by the restricted frame.

## 6. Distinguish Sampling Variability from Sampling Bias

Write a concise comparison of the two problems demonstrated by the
exercise. **Sampling variability** is random sample-to-sample
fluctuation even under proper random sampling; increasing sample size
generally reduces it. **Sampling bias** arises when the frame or
selection process systematically misrepresents the target population;
increasing sample size within the same biased frame does not necessarily
remove it.

Use your results to explain why a large sample can be **precise but
unrepresentative**.

## 7. Archaeological Interpretation

Relate the exercise briefly to Bird et al. (2022). Explain why large
archaeological radiocarbon databases should not automatically be treated
as unbiased representations of past human activity. Consider how
research history, geographic coverage, preservation, sample selection,
and other sampling filters can affect the observed database.

Keep the scope of your conclusion appropriate. Your analysis
demonstrates properties of sampling using a Southern California teaching
subset. It does **not** reconstruct prehistoric demography or evaluate
the validity of dates-as-data methods generally.

## Submission Checklist

Submit:

1.  your completed Quarto source file (`.qmd`); and
2.  the rendered HTML file (`.html`).

Your rendered report should include the reference-population summary,
repeated random sampling at the specified sample sizes, visualizations
of sampling distributions, comparison of sampling variability and
standard error, analysis of the restricted sampling frame, a clear
distinction between variability and bias, a concise archaeological
interpretation, and all R code needed to reproduce your results.

**Do not conduct confidence intervals, hypothesis tests, radiocarbon
calibration, summed probability distributions, or paleodemographic
modelling for this assignment.**

## Reference

Bird, D., Miranda, L., Vander Linden, M., Robinson, E., Bocinsky, R. K.,
Nicholson, C., Capriles, J. M., et al. (2022). p3k14c, a synthetic
global database of archaeological radiocarbon dates. *Scientific Data,
9*, 27. https://doi.org/10.1038/s41597-022-01118-7
